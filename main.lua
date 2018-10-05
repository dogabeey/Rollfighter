local prefix = "rft__"
local ok = C_ChatInfo.RegisterAddonMessagePrefix(prefix)
local channelType , channelName = JoinChannelByName("xtensionxtooltip2")

SLASH_ROLLFIGHT1 = "/rollfight"
SLASH_ROLLFIGHT2 = "/rft"

local frame = CreateFrame("Frame")
frame:RegisterEvent("CHAT_MSG_ADDON_LOGGED")

frame:SetScript("OnEvent", 
function(self, event, pre, message, dist, sender)
	if(event == "CHAT_MSG_ADDON_LOGGED") then
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

function AttackPlayer()
	local _, targetRealm = UnitFullName("target")
	if(targetRealm == nil and (UnitInParty("target") or UnitName("player") == UnitName("target"))) then
		local player = UnitName("player")
		local target = UnitName("target")
		local attacker_total_bonus_roll = DEF_ROLL + GetRPClass("player").bonus_roll_att + GetRPRace("player").bonus_roll_att
		local defender_total_bonus_roll = DEF_ROLL + GetRPClass("target").bonus_roll_att + GetRPRace("target").bonus_roll_att
		local dice_result_attacker = math.random(attacker_total_bonus_roll)
		local dice_result_defender = math.random(defender_total_bonus_roll)
		if(dice_result_attacker > dice_result_defender) then
			C_ChatInfo.SendAddonMessageLogged(prefix, player .. " successfully hit their opponent " .. target 
			.. ", by rolling " .. dice_result_attacker .. " over " .. attacker_total_bonus_roll .. " while opponent rolled " 
			.. dice_result_defender .. " over " .. defender_total_bonus_roll .. ".", "WHISPER", target)
		else
			C_ChatInfo.SendAddonMessageLogged(prefix, player .. " missed an attack against " .. target 
			.. ", by rolling " .. dice_result_attacker .. " over " .. attacker_total_bonus_roll .. " while opponent rolled " 
			.. dice_result_defender .. " over " .. defender_total_bonus_roll .. ".", "WHISPER", target)
		end
	else 
		SendSystemMessage("You must target a player in your |cff1ce456group.|r and |cff1ce456realm.|r")
	end
end

function AttackNPC()

end
