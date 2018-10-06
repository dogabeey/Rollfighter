local prefix = "rft__"
local ok = C_ChatInfo.RegisterAddonMessagePrefix(prefix)
local channelType , channelName = JoinChannelByName("xtensionxtooltip2")

SLASH_ROLLFIGHT1 = "/rollfight"
SLASH_ROLLFIGHT2 = "/rft"

local frame = CreateFrame("Frame")
frame:RegisterEvent("CHAT_MSG_ADDON_LOGGED")

frame:SetScript("OnEvent", 
function(self, event, pre, message, dist, sender)
	local senderraw = SeperateString(sender, "-")
	--print(sender .. " : " .. senderraw[1])
	--print(CheckDistance(senderraw[1],"player",40))
	if(event == "CHAT_MSG_ADDON_LOGGED" and (CheckDistance(senderraw[1],"player",NOTIFY_RANGE)) == 1) then
		SendSystemMessage(message)
	end
end)

function SlashCmdList.ROLLFIGHT(msg,editbox)
	local _, _, cmd, args = string.find(msg, "%s?(%w+)%s?(.*)")
	if(cmd) then
		if(cmd == "attack") then
			if(UnitIsPlayer("target")) then
				AttackPlayer()
			else
				AttackNPC()
			end
		else
			SendSystemMessage("There is no such sub-command.")
		end
	else
		
	end
end

function SeperateString(inputstr, sep)
        if sep == nil then
                sep = "%s"
        end
        local t={} ; local i=1
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                t[i] = str
                i = i + 1
        end
        return t
end

function CheckDistance(player1, player2, dist)
	local p1x, p1y, p1z, p1map = UnitPosition(player1)
	--print(UnitName(player1) .. "'s position is " .. p1x .. " " .. p1y .. " " .. p1z .. ".") 
	local p2x, p2y, p2z, p2map = UnitPosition(player2)
	--print(UnitName(player2) .. "'s position is " .. p2x .. " " .. p2y .. " " .. p2z .. ".") 
	if(p1map == p2map) then
		local delta = math.sqrt((p2x - p1x)*(p2x - p1x) + (p2y - p1y)*(p2y - p1y) + (p2z - p1z)*(p2z - p1z))
		--print("Distance between them is " .. delta .. ".")
		if(dist > delta) then
			return 1
		else
			return 0
		end
	else
		return -1
	end
end

function AttackPlayer()
	local _, targetRealm = UnitFullName("target")
	if(targetRealm == nil) then
		local player = UnitName("player")
		local target = UnitName("target")
		
		local attacker_total_bonus_roll = DEF_ROLL + GetRPClass("player").bonus_roll_att + GetRPRace("player").bonus_roll_att
		local defender_total_bonus_roll = DEF_ROLL + GetRPClass("target").bonus_roll_att + GetRPRace("target").bonus_roll_att
		local attacker_critical_strike_damage = GetRPClass("player").crit_damage
		local attacker_critical_strike_chance = GetRPClass("player").crit_chance
		
		local dice_result_attacker = math.random(attacker_total_bonus_roll)
		local dice_result_defender = math.random(defender_total_bonus_roll)
		-- IMPORTANT: In release; SendAddonMessageLogged(...) will be sent to a whole group once configs are added. Not the channel.
		-- "WHISPER" argument is debugging purposes only, since It seems I'm not able to send signal to myself via channels.
		local messageType = "PARTY"
		if(dice_result_attacker - dice_result_defender > attacker_critical_strike_chance) then
			C_ChatInfo.SendAddonMessageLogged(prefix, "A critical hit!! " .. player .. " critically hit their opponent " .. target 
			.. " with " .. attacker_critical_strike_damage .. " damage, by rolling " .. dice_result_attacker .. " over " .. attacker_total_bonus_roll .. " while opponent rolled " 
			.. dice_result_defender .. " over " .. defender_total_bonus_roll .. ".", messageType)
		elseif(dice_result_attacker > dice_result_defender) then
			C_ChatInfo.SendAddonMessageLogged(prefix, "Success! " .. player .. " damaged their opponent " .. target 
			.. " with " .. DEF_NORMAL_DAMAGE .. " damage, by rolling " .. dice_result_attacker .. " over " .. attacker_total_bonus_roll .. " while opponent rolled " 
			.. dice_result_defender .. " over " .. defender_total_bonus_roll .. ".", messageType)
		else
			C_ChatInfo.SendAddonMessageLogged(prefix, player .. " missed an attack against " .. target 
			.. ", by rolling " .. dice_result_attacker .. " over " .. attacker_total_bonus_roll .. " while opponent rolled " 
			.. dice_result_defender .. " over " .. defender_total_bonus_roll .. ".", messageType)
		end
	else 
		SendSystemMessage("You must target a player in your |cff1ce456realm.|r")
	end
end

function AttackNPC()

end
