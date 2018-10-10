human = Race:Create("Human",GLOBAL.ADVANTAGES.RACE.HUMAN.ATTACK,GLOBAL.ADVANTAGES.RACE.HUMAN.DEFEND)
night_elf = Race:Create("Night Elf",GLOBAL.ADVANTAGES.RACE.NIGHTELF.ATTACK,GLOBAL.ADVANTAGES.RACE.NIGHTELF.DEFEND)
dwarf = Race:Create("Dwarf",GLOBAL.ADVANTAGES.RACE.DWARF.ATTACK,GLOBAL.ADVANTAGES.RACE.DWARF.DEFEND)
gnome = Race:Create("Gnome",GLOBAL.ADVANTAGES.RACE.GNOME.ATTACK,GLOBAL.ADVANTAGES.RACE.GNOME.DEFEND)
draenei = Race:Create("Draenei",GLOBAL.ADVANTAGES.RACE.DRAENEI.ATTACK,GLOBAL.ADVANTAGES.RACE.DRAENEI.DEFEND)
worgen = Race:Create("Worgen",GLOBAL.ADVANTAGES.RACE.HUMAN.ATTACK,GLOBAL.ADVANTAGES.RACE.HUMAN.DEFEND)
orc = Race:Create("Orc",GLOBAL.ADVANTAGES.RACE.ORC.ATTACK,GLOBAL.ADVANTAGES.RACE.ORC.DEFEND)
troll = Race:Create("Troll",GLOBAL.ADVANTAGES.RACE.TROLL.ATTACK,GLOBAL.ADVANTAGES.RACE.TROLL.DEFEND)
undead = Race:Create("Undead",GLOBAL.ADVANTAGES.RACE.UNDEAD.ATTACK,GLOBAL.ADVANTAGES.RACE.UNDEAD.DEFEND)
tauren = Race:Create("Tauren",GLOBAL.ADVANTAGES.RACE.TAUREN.ATTACK,GLOBAL.ADVANTAGES.RACE.TAUREN.DEFEND)
blood_elf = Race:Create("Blood Elf",GLOBAL.ADVANTAGES.RACE.BLOODELF.ATTACK,GLOBAL.ADVANTAGES.RACE.BLOODELF.DEFEND)
goblin = Race:Create("Goblin",GLOBAL.ADVANTAGES.RACE.GOBLIN.ATTACK,GLOBAL.ADVANTAGES.RACE.GOBLIN.DEFEND)
pandaren = Race:Create("Pandaren",GLOBAL.ADVANTAGES.RACE.PANDAREN.ATTACK,GLOBAL.ADVANTAGES.RACE.PANDAREN.DEFEND)
void_elf = Race:Create("Void Elf",GLOBAL.ADVANTAGES.RACE.VOIDELF.ATTACK,GLOBAL.ADVANTAGES.RACE.VOIDELF.DEFEND)
lightforged_draenei = Race:Create("Lightforged Draenei",GLOBAL.ADVANTAGES.RACE.LIGHTFORGED.ATTACK,GLOBAL.ADVANTAGES.RACE.LIGHTFORGED.DEFEND)
highmountain_tauren = Race:Create("Highmountain Tauren",GLOBAL.ADVANTAGES.RACE.HIGHMOUNTAIN.ATTACK,GLOBAL.ADVANTAGES.RACE.HIGHMOUNTAIN.DEFEND)
nightborne = Race:Create("Nightborne",GLOBAL.ADVANTAGES.RACE.NIGHTBORNE.ATTACK,GLOBAL.ADVANTAGES.RACE.NIGHTBORNE.DEFEND)

function GetRPRace(unit)
	local _,race = UnitRace(unit)
	if (race == "Human") then return human end
	if (race == "Dwarf") then return dwarf end
	if (race == "NightElf") then return night_elf end
	if (race == "Gnome") then return gnome end
	if (race == "Draenei") then return draenei end
	if (race == "Worgen") then return worgen end
	if (race == "Orc") then return orc end
	if (race == "Troll") then return troll end
	if (race == "Scourge") then return undead end
	if (race == "Tauren") then return tauren end
	if (race == "BloodElf") then return blood_elf end
	if (race == "Goblin") then return goblin end
	if (race == "Pandaren") then return pandaren end
	if (race == "VoidElf") then return void_elf end
	if (race == "LightforgedDraenei") then return lightforged_draenei end
	if (race == "HighmountainTauren") then return highmountain_tauren end
	if (race == "Nightborne") then return nightborne end
end