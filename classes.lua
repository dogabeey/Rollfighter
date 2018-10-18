
warrior = Class:Create("Warrior",RFT_GLOB.ADVANTAGES.CLASS.WARRIOR.ATTACK,RFT_GLOB.ADVANTAGES.CLASS.WARRIOR.DEFEND)
paladin = Class:Create("Paladin",RFT_GLOB.ADVANTAGES.CLASS.PALADIN.ATTACK,RFT_GLOB.ADVANTAGES.CLASS.PALADIN.DEFEND)
hunter = Class:Create("Hunter",RFT_GLOB.ADVANTAGES.CLASS.WARRIOR.HUNTER,RFT_GLOB.ADVANTAGES.CLASS.HUNTER.DEFEND)
rogue = Class:Create("Rogue",RFT_GLOB.ADVANTAGES.CLASS.ROGUE.ATTACK,RFT_GLOB.ADVANTAGES.CLASS.ROGUE.DEFEND)
priest = Class:Create("Priest",RFT_GLOB.ADVANTAGES.CLASS.PRIEST.ATTACK,RFT_GLOB.ADVANTAGES.CLASS.PRIEST.DEFEND)
death_knight = Class:Create("Death_Knight",RFT_GLOB.ADVANTAGES.CLASS.DEATH_KNIGHT.ATTACK,RFT_GLOB.ADVANTAGES.CLASS.DEATH_KNIGHT.DEFEND)
shaman = Class:Create("Shaman",RFT_GLOB.ADVANTAGES.CLASS.SHAMAN.ATTACK,RFT_GLOB.ADVANTAGES.CLASS.SHAMAN.DEFEND)
mage = Class:Create("Mage",RFT_GLOB.ADVANTAGES.CLASS.MAGE.ATTACK,RFT_GLOB.ADVANTAGES.CLASS.MAGE.DEFEND)
warlock = Class:Create("Warlock",RFT_GLOB.ADVANTAGES.CLASS.WARLOCK.ATTACK,RFT_GLOB.ADVANTAGES.CLASS.WARLOCK.DEFEND)
monk = Class:Create("Monk",RFT_GLOB.ADVANTAGES.CLASS.MONK.ATTACK,RFT_GLOB.ADVANTAGES.CLASS.MONK.DEFEND)
druid = Class:Create("Druid",RFT_GLOB.ADVANTAGES.CLASS.DRUID.ATTACK,RFT_GLOB.ADVANTAGES.CLASS.DRUID.DEFEND)
demon_hunter = Class:Create("Demon_Hunter",RFT_GLOB.ADVANTAGES.CLASS.DEMON_HUNTER.ATTACK,RFT_GLOB.ADVANTAGES.CLASS.DEMON_HUNTER.DEFEND)

function GetRPClass(unit)
	local _,_,index = UnitClass(unit)
	if (index == 1) then return warrior end
	if (index == 2) then return paladin end
	if (index == 3) then return hunter end
	if (index == 4) then return rogue end
	if (index == 5) then return priest end
	if (index == 6) then return death_knight end
	if (index == 7) then return shaman end
	if (index == 8) then return mage end
	if (index == 9) then return warlock end
	if (index == 10) then return monk end
	if (index == 11) then return druid end
	if (index == 12) then return demon_hunter end
end