
warrior = Class:Create("Warrior",GLOBAL.ADVANTAGES.CLASS.WARRIOR.ATTACK,GLOBAL.ADVANTAGES.CLASS.WARRIOR.DEFEND)
paladin = Class:Create("Paladin",GLOBAL.ADVANTAGES.CLASS.PALADIN.ATTACK,GLOBAL.ADVANTAGES.CLASS.PALADIN.DEFEND)
hunter = Class:Create("Hunter",GLOBAL.ADVANTAGES.CLASS.WARRIOR.HUNTER,GLOBAL.ADVANTAGES.CLASS.HUNTER.DEFEND)
rogue = Class:Create("Rogue",GLOBAL.ADVANTAGES.CLASS.ROGUE.ATTACK,GLOBAL.ADVANTAGES.CLASS.ROGUE.DEFEND)
priest = Class:Create("Priest",GLOBAL.ADVANTAGES.CLASS.PRIEST.ATTACK,GLOBAL.ADVANTAGES.CLASS.PRIEST.DEFEND)
death_knight = Class:Create("Death Knight",GLOBAL.ADVANTAGES.CLASS.DEATH_KNIGHT.ATTACK,GLOBAL.ADVANTAGES.CLASS.DEATH_KNIGHT.DEFEND)
shaman = Class:Create("Shaman",GLOBAL.ADVANTAGES.CLASS.SHAMAN.ATTACK,GLOBAL.ADVANTAGES.CLASS.SHAMAN.DEFEND)
mage = Class:Create("Mage",GLOBAL.ADVANTAGES.CLASS.MAGE.ATTACK,GLOBAL.ADVANTAGES.CLASS.MAGE.DEFEND)
warlock = Class:Create("Warlock",GLOBAL.ADVANTAGES.CLASS.WARLOCK.ATTACK,GLOBAL.ADVANTAGES.CLASS.WARLOCK.DEFEND)
monk = Class:Create("Monk",GLOBAL.ADVANTAGES.CLASS.MONK.ATTACK,GLOBAL.ADVANTAGES.CLASS.MONK.DEFEND)
druid = Class:Create("Druid",GLOBAL.ADVANTAGES.CLASS.DRUID.ATTACK,GLOBAL.ADVANTAGES.CLASS.DRUID.DEFEND)
demon_hunter = Class:Create("Demon Hunter",GLOBAL.ADVANTAGES.CLASS.DEMON_HUNTER.ATTACK,GLOBAL.ADVANTAGES.CLASS.DEMON_HUNTER.DEFEND)

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