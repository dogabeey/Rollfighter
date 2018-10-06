human = Race:Create("Human",ADVANTAGES.RACE.HUMAN.ATTACK,ADVANTAGES.RACE.HUMAN.DEFEND)
night_elf = Race:Create("Night Elf",ADVANTAGES.RACE.NIGHTELF.ATTACK,ADVANTAGES.RACE.NIGHTELF.DEFEND)
dwarf = Race:Create("Dwarf",ADVANTAGES.RACE.DWARF.ATTACK,ADVANTAGES.RACE.DWARF.DEFEND)
gnome = Race:Create("Gnome",ADVANTAGES.RACE.GNOME.ATTACK,ADVANTAGES.RACE.GNOME.DEFEND)
draenei = Race:Create("Draenei",ADVANTAGES.RACE.DRAENEI.ATTACK,ADVANTAGES.RACE.DRAENEI.DEFEND)
worgen = Race:Create("Worgen",ADVANTAGES.RACE.HUMAN.ATTACK,ADVANTAGES.RACE.HUMAN.DEFEND)
orc = Race:Create("Orc",ADVANTAGES.RACE.ORC.ATTACK,ADVANTAGES.RACE.ORC.DEFEND)
troll = Race:Create("Troll",ADVANTAGES.RACE.TROLL.ATTACK,ADVANTAGES.RACE.TROLL.DEFEND)
undead = Race:Create("Undead",ADVANTAGES.RACE.UNDEAD.ATTACK,ADVANTAGES.RACE.UNDEAD.DEFEND)
tauren = Race:Create("Tauren",ADVANTAGES.RACE.TAUREN.ATTACK,ADVANTAGES.RACE.TAUREN.DEFEND)
blood_elf = Race:Create("Blood Elf",ADVANTAGES.RACE.BLOODELF.ATTACK,ADVANTAGES.RACE.BLOODELF.DEFEND)
goblin = Race:Create("Goblin",ADVANTAGES.RACE.GOBLIN.ATTACK,ADVANTAGES.RACE.GOBLIN.DEFEND)
pandaren = Race:Create("Pandaren",ADVANTAGES.RACE.PANDAREN.ATTACK,ADVANTAGES.RACE.PANDAREN.DEFEND)
void_elf = Race:Create("Void Elf",ADVANTAGES.RACE.VOIDELF.ATTACK,ADVANTAGES.RACE.VOIDELF.DEFEND)
lightforged_draenei = Race:Create("Lightforged Draenei",ADVANTAGES.RACE.LIGHTFORGED.ATTACK,ADVANTAGES.RACE.LIGHTFORGED.DEFEND)
highmountain_tauren = Race:Create("Highmountain Tauren",ADVANTAGES.RACE.HIGHMOUNTAIN.ATTACK,ADVANTAGES.RACE.HIGHMOUNTAIN.DEFEND)
nightborne = Race:Create("Nightborne",ADVANTAGES.RACE.NIGHTBORNE.ATTACK,ADVANTAGES.RACE.NIGHTBORNE.DEFEND)

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