local prefix = "rft__"
local prefix_req = "rft__req"
local prefix_send = "rft__send"
local prefix_val = "rft__val"

local ok = C_ChatInfo.RegisterAddonMessagePrefix(prefix)
ok = C_ChatInfo.RegisterAddonMessagePrefix(prefix_req)
ok = C_ChatInfo.RegisterAddonMessagePrefix(prefix_send)
ok = C_ChatInfo.RegisterAddonMessagePrefix(prefix_val)
local channelType , channelName = JoinChannelByName("xtensionxtooltip2")

SLASH_ROLLFIGHT1 = "/rollfight"
SLASH_ROLLFIGHT2 = "/rft"

local frame = CreateFrame("Frame")
frame:RegisterEvent("CHAT_MSG_ADDON_LOGGED")
frame:RegisterEvent("PARTY_LEADER_CHANGED")
frame:RegisterEvent("ADDON_LOADED")

local syncedPerson = nil

frame:SetScript("OnEvent", 
function(self, event, pre, message, dist, sender)
	if(event == "CHAT_MSG_ADDON_LOGGED") then
		local senderraw = SeperateString(sender, "-")
		----print(sender .. " : " .. senderraw[1])
		----print(CheckDistance(senderraw[1],"player",40))
		if((CheckDistance(senderraw[1],"player",RFT_GLOB.NOTIFY_RANGE)) == 1) then
			if(pre == prefix_send) then
				--print("message: " .. message)
				local glob = SeperateString(string.upper(message),"-")
				--print(glob[1] .. ": " .. glob[2])
				--print(sender .. " sent you " .. glob[1] .. " data as " .. glob[2])
				RFT_GLOB[glob[1]] = glob[2]
				syncedPerson = senderraw[1]
			end
			if(pre == prefix_req) then
				--print(sender .. " requested " .. message .. " data from you.")
				SendGlobal(message,sender) -- "Return to sender"
			end
			if(pre == prefix_val) then
				RequestGlobal()
			end
			if(dist == "PARTY" or dist == "RAID") then
				SendSystemMessage(message)
			end
	    end
	end
	if((event == "PARTY_LEADER_CHANGED" or event == "ADDON_LOADED") and not UnitIsGroupLeader("player"))then
		RequestGlobal()
	end
end)

function SlashCmdList.ROLLFIGHT(msg,editbox)
	local _, _, cmd, args = string.find(msg, "%s?(%w+)%s?(.*)")
	if(cmd) then
		if(cmd == "attack") then
			if(UnitName("target")) then
				if(UnitIsPlayer("target")) then
					AttackPlayer()
				else
					AttackNPC()
				end
			else
				SendSystemMessage("You have no target.")
			end
		elseif(cmd == "config") then
			args = SeperateString(args," ")
			-- TODO: Find and easy way to automaticly add config command for each saved variables. UPDATE: Poor LUA can't get name of variables. Boo. Consider define name in each table.
			C_ChatInfo.SendAddonMessageLogged(prefix_val, "Notifying config changes", "PARTY")
			DefineConfig(args)
		elseif(cmd == "help") then
			args = SeperateString(args," ")
			if(args[1] == "config") then
				SendSystemMessage("|cff1ec456Syntax: rft config <config_string> [<new_value>]. You can find config strings under <addonFolder>/definitions.lua (Type without RFT_GLOB. part). Example: /rft config advantages.race.tauren.defense 50|r")
			end
			if(args[1] == "attack") then
				SendSystemMessage("Simply click a player in your realm or an NPC to 'attack' them. Game will calculate your class' and race's attack power and roll for you, while also rolls for your target according to their attack & defend. Then It returns the results to the Chat window. Critical damage is determined by difference between your rolls.")
			end
		else
			SendSystemMessage("There is no such sub-command.")
		end
	else
		
	end
end

function SendGlobal(global_data_string, reciever)
	local data = SeperateString(global_data_string,".")
	if(data[4]) then
		local real_data = RFT_GLOB[data[1]][data[2]][data[3]][data[4]]
		if(reciever) then
			local recieverraw = SeperateString(reciever, "-")
			--print("Sending " .. global_data_string .. " with value of " .. real_data .. " to " .. recieverraw[1])
			 C_ChatInfo.SendAddonMessageLogged(prefix_send, global_data_string .. "-" .. real_data, "WHISPER", recieverraw[1])
		else 
			C_ChatInfo.SendAddonMessageLogged(prefix_send, global_data_string .. "-" .. real_data, "PARTY") 
		end
	elseif(data[3]) then
		local real_data = RFT_GLOB[data[1]][data[2]][data[3]]
		if(reciever) then
			local recieverraw = SeperateString(reciever, "-")
			--print("Sending " .. global_data_string .. " with value of " .. real_data .. " to " .. recieverraw[1])
			C_ChatInfo.SendAddonMessageLogged(prefix_send, global_data_string .. "-" .. real_data, "WHISPER", recieverraw[1])
		else 
			C_ChatInfo.SendAddonMessageLogged(prefix_send, global_data_string .. "-" .. real_data, "PARTY") 
		end
	elseif(data[2]) then
		local real_data = RFT_GLOB[data[1]][data[2]]
		if(reciever) then
			local recieverraw = SeperateString(reciever, "-")
			--print("Sending " .. global_data_string .. " with value of " .. real_data .. " to " .. recieverraw[1])
			 C_ChatInfo.SendAddonMessageLogged(prefix_send, global_data_string .. "-" .. real_data, "WHISPER", recieverraw[1])
		else 
			C_ChatInfo.SendAddonMessageLogged(prefix_send, global_data_string .. "-" .. real_data, "PARTY") 
		end
	else
		local real_data = RFT_GLOB[data[1]]
		if(reciever) then
			local recieverraw = SeperateString(reciever, "-")
			--print("Sending " .. global_data_string .. " with value of " .. real_data .. " to " .. recieverraw[1])
			 C_ChatInfo.SendAddonMessageLogged(prefix_send, global_data_string .. "-" .. real_data, "WHISPER", recieverraw[1])
		else 
			C_ChatInfo.SendAddonMessageLogged(prefix_send, global_data_string .. "-" .. real_data, "PARTY") 
		end
	end
end

function RequestGlobal(global_data_string)
	if(global_data_string) then
		--print("Requesting " .. global_data_string .. " from " .. UnitName("party1"))
		C_ChatInfo.SendAddonMessageLogged(prefix_req,global_data_string,"WHISPER",UnitName("party1"))
	else
		C_ChatInfo.SendAddonMessageLogged(prefix_req,"DEF_ROLL","WHISPER",UnitName("party1"))
		C_ChatInfo.SendAddonMessageLogged(prefix_req,"DEF_NORMAL_DAMAGE","WHISPER",UnitName("party1"))
		C_ChatInfo.SendAddonMessageLogged(prefix_req,"DEF_CRIT_DAMAGE","WHISPER",UnitName("party1"))
		C_ChatInfo.SendAddonMessageLogged(prefix_req,"DEF_CRIT_CHANCE","WHISPER",UnitName("party1"))
		C_ChatInfo.SendAddonMessageLogged(prefix_req,"MAX_HEALTH","WHISPER",UnitName("party1"))
		for key, val in pairs(class_list) do
			local rp_class = string.upper(val)
			C_ChatInfo.SendAddonMessageLogged(prefix_req,"ADVANTAGES.CLASS." .. rp_class .. ".ATTACK" ,"WHISPER",UnitName("party1"))
			C_ChatInfo.SendAddonMessageLogged(prefix_req,"ADVANTAGES.CLASS." .. rp_class .. ".DEFEND" ,"WHISPER",UnitName("party1"))
			C_ChatInfo.SendAddonMessageLogged(prefix_req,"ADVANTAGES.CLASS." .. rp_class .. ".CRIT_CHANCE" ,"WHISPER",UnitName("party1"))
			C_ChatInfo.SendAddonMessageLogged(prefix_req,"ADVANTAGES.CLASS." .. rp_class .. ".CRIT_DAMAGE" ,"WHISPER",UnitName("party1"))
		end
		for key, val in pairs(race_list) do
			local rp_race = string.upper(val)
			C_ChatInfo.SendAddonMessageLogged(prefix_req,"ADVANTAGES.RACE." .. rp_race .. ".ATTACK" ,"WHISPER",UnitName("party1"))
			C_ChatInfo.SendAddonMessageLogged(prefix_req,"ADVANTAGES.RACE." .. rp_race .. ".DEFEND" ,"WHISPER",UnitName("party1"))
			C_ChatInfo.SendAddonMessageLogged(prefix_req,"ADVANTAGES.RACE." .. rp_race .. ".CRIT_CHANCE" ,"WHISPER",UnitName("party1"))
			C_ChatInfo.SendAddonMessageLogged(prefix_req,"ADVANTAGES.RACE." .. rp_race .. ".CRIT_DAMAGE" ,"WHISPER",UnitName("party1"))
		end
	end
end

function DeSync()
	C_ChatInfo.SendAddonMessageLogged(prefix_val," ","PARTY")
end

function DefineConfig(args)
	if(args[1]) then
		local found = nil
		args[1] = string.upper(args[1])
		for k, v in pairs(RFT_GLOB_LIST) do
			if (v == args[1]) then
				found = v
				break 
			end
		end
		if(found) then
			local data = SeperateString(found,".")
			local real_data = nil
			if(data[4]) then
				real_data = RFT_GLOB[data[1]][data[2]][data[3]][data[4]]
			elseif(data[3]) then
				real_data = RFT_GLOB[data[1]][data[2]][data[3]]
			elseif(data[2]) then
				real_data = RFT_GLOB[data[1]][data[2]]
			elseif(data[1]) then
				real_data = RFT_GLOB[data[1]]
			end
			if(args[2]) then
				if(data[4]) then
					RFT_GLOB[data[1]][data[2]][data[3]][data[4]] = args[2]
				elseif(data[3]) then
					RFT_GLOB[data[1]][data[2]][data[3]] = args[2]
				elseif(data[2]) then
					RFT_GLOB[data[1]][data[2]]= args[2]
				elseif(data[1]) then
					RFT_GLOB[data[1]]= args[2]
				end
				SendSystemMessage("Changed " .. args[1] .. " value to " .. args[2])
			else
				SendSystemMessage(args[1] .. ": " .. real_data)
			end
		else
			SendSystemMessage("There is no such configuration.")
		end
	else
		SendSystemMessage("|cff1ec456Syntax: rft config <config_string> [<new_value>]. You can find config strings under <addonFolder>/definitions.lua (Type without RFT_GLOB. part). Example: /rft config advantages.race.tauren.defense 50|r")
	end
end

function PrintTable(tab)
	local text = ""
	for k,v in pairs(tab) do
		text = text .. v
	end
	return text
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
	----print(UnitName(player1) .. "'s position is " .. p1x .. " " .. p1y .. " " .. p1z .. ".") 
	local p2x, p2y, p2z, p2map = UnitPosition(player2)
	----print(UnitName(player2) .. "'s position is " .. p2x .. " " .. p2y .. " " .. p2z .. ".") 
	if(p1map == p2map) then
		local delta = math.sqrt((p2x - p1x)*(p2x - p1x) + (p2y - p1y)*(p2y - p1y) + (p2z - p1z)*(p2z - p1z))
		----print("Distance between them is " .. delta .. ".")
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
	if(UnitIsGroupLeader("player")) then
		if(targetRealm == nil) then
			local player = UnitName("player")
			local target = UnitName("target")
			local attacker_total_bonus_roll = RFT_GLOB.DEF_ROLL + GetRPClass("player").bonus_roll_att + GetRPRace("player").bonus_roll_att
			local defender_total_bonus_roll = RFT_GLOB.DEF_ROLL + GetRPClass("target").bonus_roll_att + GetRPRace("target").bonus_roll_att
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
				.. " with " .. RFT_GLOB.DEF_NORMAL_DAMAGE .. " damage, by rolling " .. dice_result_attacker .. " over " .. attacker_total_bonus_roll .. " while opponent rolled " 
				.. dice_result_defender .. " over " .. defender_total_bonus_roll .. ".", messageType)
			else
				C_ChatInfo.SendAddonMessageLogged(prefix, player .. " missed an attack against " .. target 
				.. ", by rolling " .. dice_result_attacker .. " over " .. attacker_total_bonus_roll .. " while opponent rolled " 
				.. dice_result_defender .. " over " .. defender_total_bonus_roll .. ".", messageType)
			end
		else 
			SendSystemMessage("You must target a player in your |cff1ce456realm.|r")
		end
	else
		if(targetRealm == nil) then
			RequestGlobal()
			
			if(syncedPerson == UnitName("party1")) then
				local player = UnitName("player")
				local target = UnitName("target")
				local attacker_total_bonus_roll = RFT_GLOB.DEF_ROLL + GetRPClass("player").bonus_roll_att + GetRPRace("player").bonus_roll_att
				local defender_total_bonus_roll = RFT_GLOB.DEF_ROLL + GetRPClass("target").bonus_roll_att + GetRPRace("target").bonus_roll_att
				local attacker_critical_strike_damage = GetRPClass("player").crit_damage
				local attacker_critical_strike_chance = GetRPClass("player").crit_chance
				
				local dice_result_attacker = math.random(attacker_total_bonus_roll)
				local dice_result_defender = math.random(defender_total_bonus_roll)
				local messageType = "PARTY"
				if(dice_result_attacker - dice_result_defender > attacker_critical_strike_chance) then
					C_ChatInfo.SendAddonMessageLogged(prefix, "A critical hit!! " .. player .. " critically hit their opponent " .. target 
					.. " with " .. attacker_critical_strike_damage .. " damage, by rolling " .. dice_result_attacker .. " over " .. attacker_total_bonus_roll .. " while opponent rolled " 
					.. dice_result_defender .. " over " .. defender_total_bonus_roll .. ".", messageType)
				elseif(dice_result_attacker > dice_result_defender) then
					C_ChatInfo.SendAddonMessageLogged(prefix, "Success! " .. player .. " damaged their opponent " .. target 
					.. " with " .. RFT_GLOB.DEF_NORMAL_DAMAGE .. " damage, by rolling " .. dice_result_attacker .. " over " .. attacker_total_bonus_roll .. " while opponent rolled " 
					.. dice_result_defender .. " over " .. defender_total_bonus_roll .. ".", messageType)
				else
					C_ChatInfo.SendAddonMessageLogged(prefix, player .. " missed an attack against " .. target 
					.. ", by rolling " .. dice_result_attacker .. " over " .. attacker_total_bonus_roll .. " while opponent rolled " 
					.. dice_result_defender .. " over " .. defender_total_bonus_roll .. ".", messageType)
				end
			else
				SendSystemMessage("Your config is being synced with party leader. Please try again in a second.")
			end
		else 
			SendSystemMessage("You must target a player in your |cff1ce456realm.|r")
		end
	end
end

function AttackNPC()
	local player = UnitName("player")
	local target = UnitName("target")
	
	local attacker_total_bonus_roll = RFT_GLOB.DEF_ROLL + GetRPClass("player").bonus_roll_att + GetRPRace("player").bonus_roll_att
	local defender_total_bonus_roll = RFT_GLOB.DEF_ROLL
	local attacker_critical_strike_damage = GetRPClass("player").crit_damage
	local attacker_critical_strike_chance = GetRPClass("player").crit_chance
	
	local dice_result_attacker = math.random(attacker_total_bonus_roll)
	local dice_result_defender = math.random(defender_total_bonus_roll)
	local messageType = "PARTY"
	if(dice_result_attacker - dice_result_defender > attacker_critical_strike_chance) then
		C_ChatInfo.SendAddonMessageLogged(prefix, "A critical hit!! " .. player .. " critically hit their opponent " .. target 
		.. " with " .. attacker_critical_strike_damage .. " damage, by rolling " .. dice_result_attacker .. " over " .. attacker_total_bonus_roll .. " while opponent rolled " 
		.. dice_result_defender .. " over " .. defender_total_bonus_roll .. ".", messageType)
	elseif(dice_result_attacker > dice_result_defender) then
		C_ChatInfo.SendAddonMessageLogged(prefix, "Success! " .. player .. " damaged their opponent " .. target 
		.. " with " .. RFT_GLOB.DEF_NORMAL_DAMAGE .. " damage, by rolling " .. dice_result_attacker .. " over " .. attacker_total_bonus_roll .. " while opponent rolled " 
		.. dice_result_defender .. " over " .. defender_total_bonus_roll .. ".", messageType)
	else
		C_ChatInfo.SendAddonMessageLogged(prefix, player .. " missed an attack against " .. target 
		.. ", by rolling " .. dice_result_attacker .. " over " .. attacker_total_bonus_roll .. " while opponent rolled " 
		.. dice_result_defender .. " over " .. defender_total_bonus_roll .. ".", messageType)
	end
end
