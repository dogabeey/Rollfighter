human = Race:Create("Human",RFT_GLOB.ADVANTAGES.RACE.HUMAN.ATTACK,RFT_GLOB.ADVANTAGES.RACE.HUMAN.DEFEND)
night_elf = Race:Create("NightElf",RFT_GLOB.ADVANTAGES.RACE.NIGHTELF.ATTACK,RFT_GLOB.ADVANTAGES.RACE.NIGHTELF.DEFEND)
dwarf = Race:Create("Dwarf",RFT_GLOB.ADVANTAGES.RACE.DWARF.ATTACK,RFT_GLOB.ADVANTAGES.RACE.DWARF.DEFEND)
gnome = Race:Create("Gnome",RFT_GLOB.ADVANTAGES.RACE.GNOME.ATTACK,RFT_GLOB.ADVANTAGES.RACE.GNOME.DEFEND)
draenei = Race:Create("Draenei",RFT_GLOB.ADVANTAGES.RACE.DRAENEI.ATTACK,RFT_GLOB.ADVANTAGES.RACE.DRAENEI.DEFEND)
worgen = Race:Create("Worgen",RFT_GLOB.ADVANTAGES.RACE.HUMAN.ATTACK,RFT_GLOB.ADVANTAGES.RACE.HUMAN.DEFEND)
orc = Race:Create("Orc",RFT_GLOB.ADVANTAGES.RACE.ORC.ATTACK,RFT_GLOB.ADVANTAGES.RACE.ORC.DEFEND)
troll = Race:Create("Troll",RFT_GLOB.ADVANTAGES.RACE.TROLL.ATTACK,RFT_GLOB.ADVANTAGES.RACE.TROLL.DEFEND)
undead = Race:Create("Undead",RFT_GLOB.ADVANTAGES.RACE.UNDEAD.ATTACK,RFT_GLOB.ADVANTAGES.RACE.UNDEAD.DEFEND)
tauren = Race:Create("Tauren",RFT_GLOB.ADVANTAGES.RACE.TAUREN.ATTACK,RFT_GLOB.ADVANTAGES.RACE.TAUREN.DEFEND)
blood_elf = Race:Create("BloodElf",RFT_GLOB.ADVANTAGES.RACE.BLOODELF.ATTACK,RFT_GLOB.ADVANTAGES.RACE.BLOODELF.DEFEND)
goblin = Race:Create("Goblin",RFT_GLOB.ADVANTAGES.RACE.GOBLIN.ATTACK,RFT_GLOB.ADVANTAGES.RACE.GOBLIN.DEFEND)
pandaren = Race:Create("Pandaren",RFT_GLOB.ADVANTAGES.RACE.PANDAREN.ATTACK,RFT_GLOB.ADVANTAGES.RACE.PANDAREN.DEFEND)
void_elf = Race:Create("VoidElf",RFT_GLOB.ADVANTAGES.RACE.VOIDELF.ATTACK,RFT_GLOB.ADVANTAGES.RACE.VOIDELF.DEFEND)
lightforged_draenei = Race:Create("Lightforged_Draenei",RFT_GLOB.ADVANTAGES.RACE.LIGHTFORGED_DRAENEI.ATTACK,RFT_GLOB.ADVANTAGES.RACE.LIGHTFORGED_DRAENEI.DEFEND)
highmountain_tauren = Race:Create("Highmountain_Tauren",RFT_GLOB.ADVANTAGES.RACE.HIGHMOUNTAIN_TAUREN.ATTACK,RFT_GLOB.ADVANTAGES.RACE.HIGHMOUNTAIN_TAUREN.DEFEND)
nightborne = Race:Create("Nightborne",RFT_GLOB.ADVANTAGES.RACE.NIGHTBORNE.ATTACK,RFT_GLOB.ADVANTAGES.RACE.NIGHTBORNE.DEFEND)

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