
warrior = Class:Create("Warrior",ADVANTAGES.CLASS.WARRIOR.ATTACK,ADVANTAGES.CLASS.WARRIOR.DEFEND)
paladin = Class:Create("Paladin",ADVANTAGES.CLASS.PALADIN.ATTACK,ADVANTAGES.CLASS.PALADIN.DEFEND)
hunter = Class:Create("Hunter",ADVANTAGES.CLASS.WARRIOR.HUNTER,ADVANTAGES.CLASS.HUNTER.DEFEND)
rogue = Class:Create("Rogue",ADVANTAGES.CLASS.ROGUE.ATTACK,ADVANTAGES.CLASS.ROGUE.DEFEND)
priest = Class:Create("Priest",ADVANTAGES.CLASS.PRIEST.ATTACK,ADVANTAGES.CLASS.PRIEST.DEFEND)
death_knight = Class:Create("Death Knight",ADVANTAGES.CLASS.DEATH_KNIGHT.ATTACK,ADVANTAGES.CLASS.DEATH_KNIGHT.DEFEND)
shaman = Class:Create("Shaman",ADVANTAGES.CLASS.SHAMAN.ATTACK,ADVANTAGES.CLASS.SHAMAN.DEFEND)
mage = Class:Create("Mage",ADVANTAGES.CLASS.MAGE.ATTACK,ADVANTAGES.CLASS.MAGE.DEFEND)
warlock = Class:Create("Warlock",ADVANTAGES.CLASS.WARLOCK.ATTACK,ADVANTAGES.CLASS.WARLOCK.DEFEND)
monk = Class:Create("Monk",ADVANTAGES.CLASS.MONK.ATTACK,ADVANTAGES.CLASS.MONK.DEFEND)
druid = Class:Create("Druid",ADVANTAGES.CLASS.DRUID.ATTACK,ADVANTAGES.CLASS.DRUID.DEFEND)
demon_hunter = Class:Create("Demon Hunter",ADVANTAGES.CLASS.DEMON_HUNTER.ATTACK,ADVANTAGES.CLASS.DEMON_HUNTER.DEFEND)

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