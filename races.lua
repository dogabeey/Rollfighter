human = Race:Create("Human",BONUS_ROLL.RACE.HUMAN.ATTACK,BONUS_ROLL.RACE.HUMAN.DEFEND)
night_elf = Race:Create("Night Elf",BONUS_ROLL.RACE.NIGHTELF.ATTACK,BONUS_ROLL.RACE.NIGHTELF.DEFEND)
dwarf = Race:Create("Dwarf",BONUS_ROLL.RACE.DWARF.ATTACK,BONUS_ROLL.RACE.DWARF.DEFEND)
gnome = Race:Create("Gnome",BONUS_ROLL.RACE.GNOME.ATTACK,BONUS_ROLL.RACE.GNOME.DEFEND)
draenei = Race:Create("Draenei",BONUS_ROLL.RACE.DRAENEI.ATTACK,BONUS_ROLL.RACE.DRAENEI.DEFEND)
worgen = Race:Create("Worgen",BONUS_ROLL.RACE.HUMAN.ATTACK,BONUS_ROLL.RACE.HUMAN.DEFEND)
orc = Race:Create("Orc",BONUS_ROLL.RACE.ORC.ATTACK,BONUS_ROLL.RACE.ORC.DEFEND)
troll = Race:Create("Troll",BONUS_ROLL.RACE.TROLL.ATTACK,BONUS_ROLL.RACE.TROLL.DEFEND)
undead = Race:Create("Undead",BONUS_ROLL.RACE.UNDEAD.ATTACK,BONUS_ROLL.RACE.UNDEAD.DEFEND)
tauren = Race:Create("Tauren",BONUS_ROLL.RACE.TAUREN.ATTACK,BONUS_ROLL.RACE.TAUREN.DEFEND)
blood_elf = Race:Create("Blood Elf",BONUS_ROLL.RACE.BLOODELF.ATTACK,BONUS_ROLL.RACE.BLOODELF.DEFEND)
goblin = Race:Create("Goblin",BONUS_ROLL.RACE.GOBLIN.ATTACK,BONUS_ROLL.RACE.GOBLIN.DEFEND)
pandaren = Race:Create("Pandaren",BONUS_ROLL.RACE.PANDAREN.ATTACK,BONUS_ROLL.RACE.PANDAREN.DEFEND)
void_elf = Race:Create("Void Elf",BONUS_ROLL.RACE.VOIDELF.ATTACK,BONUS_ROLL.RACE.VOIDELF.DEFEND)
lightforged_draenei = Race:Create("Lightforged Draenei",BONUS_ROLL.RACE.LIGHTFORGED.ATTACK,BONUS_ROLL.RACE.LIGHTFORGED.DEFEND)
highmountain_tauren = Race:Create("Highmountain Tauren",BONUS_ROLL.RACE.HIGHMOUNTAIN.ATTACK,BONUS_ROLL.RACE.HIGHMOUNTAIN.DEFEND)
nightborne = Race:Create("Nightborne",BONUS_ROLL.RACE.NIGHTBORNE.ATTACK,BONUS_ROLL.RACE.NIGHTBORNE.DEFEND)

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