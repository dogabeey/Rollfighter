warrior = Class:Create("Warrior",0,0,1,1)
paladin = Class:Create("Paladin",0,0,1,1)
hunter = Class:Create("Hunter",0,0,1,1)
rogue = Class:Create("Rogue",0,0,1,1)
priest = Class:Create("Priest",0,0,1,1)
death_knight = Class:Create("Death Knight",0,0,1,1)
shaman = Class:Create("Shaman",0,0,1,1)
mage = Class:Create("Mage",0,0,1,1)
warlock = Class:Create("Warlock",0,0,1,1)
monk = Class:Create("Monk",0,0,1,1)
druid = Class:Create("Druid",0,0,1,1)
demon_hunter = Class:Create("Demon Hunter",0,0,1,1)

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