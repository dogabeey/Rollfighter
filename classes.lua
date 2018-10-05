
warrior = Class:Create("Warrior",BONUS_ROLL.CLASS.WARRIOR.ATTACK,BONUS_ROLL.CLASS.WARRIOR.DEFEND)
paladin = Class:Create("Paladin",BONUS_ROLL.CLASS.PALADIN.ATTACK,BONUS_ROLL.CLASS.PALADIN.DEFEND)
hunter = Class:Create("Hunter",BONUS_ROLL.CLASS.WARRIOR.HUNTER,BONUS_ROLL.CLASS.HUNTER.DEFEND)
rogue = Class:Create("Rogue",BONUS_ROLL.CLASS.ROGUE.ATTACK,BONUS_ROLL.CLASS.ROGUE.DEFEND)
priest = Class:Create("Priest",BONUS_ROLL.CLASS.PRIEST.ATTACK,BONUS_ROLL.CLASS.PRIEST.DEFEND)
death_knight = Class:Create("Death Knight",BONUS_ROLL.CLASS.DEATH_KNIGHT.ATTACK,BONUS_ROLL.CLASS.DEATH_KNIGHT.DEFEND)
shaman = Class:Create("Shaman",BONUS_ROLL.CLASS.SHAMAN.ATTACK,BONUS_ROLL.CLASS.SHAMAN.DEFEND)
mage = Class:Create("Mage",BONUS_ROLL.CLASS.MAGE.ATTACK,BONUS_ROLL.CLASS.MAGE.DEFEND)
warlock = Class:Create("Warlock",BONUS_ROLL.CLASS.WARLOCK.ATTACK,BONUS_ROLL.CLASS.WARLOCK.DEFEND)
monk = Class:Create("Monk",BONUS_ROLL.CLASS.MONK.ATTACK,BONUS_ROLL.CLASS.MONK.DEFEND)
druid = Class:Create("Druid",BONUS_ROLL.CLASS.DRUID.ATTACK,BONUS_ROLL.CLASS.DRUID.DEFEND)
demon_hunter = Class:Create("Demon Hunter",BONUS_ROLL.CLASS.DEMON_HUNTER.ATTACK,BONUS_ROLL.CLASS.DEMON_HUNTER.DEFEND)

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