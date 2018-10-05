human = Race:Create("Human",0,0,1,1)
night_elf = Race:Create("Night Elf",0,0,1,1)
dwarf = Race:Create("Dwarf",0,0,1,1)
gnome = Race:Create("Gnome",0,0,1,1)
draenei = Race:Create("Draenei",0,0,1,1)
worgen = Race:Create("Worgen",0,0,1,1)
orc = Race:Create("Orc",0,0,1,1)
troll = Race:Create("Troll",0,0,1,1)
undead = Race:Create("Undead",0,0,1,1)
tauren = Race:Create("Tauren",0,0,1,1)
blood_elf = Race:Create("Blood Elf",0,0,1,1)
goblin = Race:Create("Goblin",0,0,1,1)
pandaren = Race:Create("Pandaren",0,0,1,1)
void_elf = Race:Create("Void Elf",0,0,1,1)
lightforged_draenei = Race:Create("Lightforged Draenei",0,0,1,1)
highmountain_tauren = Race:Create("Highmountain Tauren",0,0,1,1)
nightborne = Race:Create("Nightborne",0,0,1,1)

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