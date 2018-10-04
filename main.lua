local prefix = "rft__"
local ok = C_ChatInfo.RegisterAddonMessagePrefix(prefix)

SLASH_ROLLFIGHT1 = "/rollfight"
SLASH_ROLLFIGHT2 = "/rft"

local frame = CreateFrame("Frame")
frame:RegisterEvent("CHAT_MSG_ADDON_LOGGED")

frame:SetScript("OnEvent", 
function(self, event, pre, message, dist, target)
	if(event == "CHAT_MSG_ADDON_LOGGED") then
	end
end)

function SlashCmdList.ROLLFIGHT(msg,editbox)
	local _, _, cmd, args = string.find(msg, "%s?(%w+)%s?(.*)")
	if(cmd) then
		if(cmd == "attack") then
			if(args == "") then
				AttackTarget()
			else
				AttackTo(args)
			end
		else
			SendSystemMessage("There is no such sub-command.")
		end
	else
		
	end
end

function AttackTarget()
	local _, targetRealm = UnitFullName("target")
	if(targetRealm == nil) then
		C_ChatInfo.SendAddonMessageLogged(prefix, "Hey, I've just attacked you.", "WHISPER", GetUnitName("target"))
	else SendSystemMessage("You must target a |cffaabb56player|r in your |cff1ce456realm.|r")
	end
end

function AttackTo(player)
	C_ChatInfo.SendAddonMessageLogged(prefix, "Hey, I have just attacked you.", "WHISPER", GetUnitName(player))
end