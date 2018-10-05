do return end

-- Numbers in those tables are bonus roll advantage of the class in index has against corresponding defending class.

-- class advantages
Adv_Class = {}

Adv_Class["Warrior"] = {["Warrior"]= 0,["Paladin"]= 0,["Hunter"]= 0,["Rogue"]= 0,["Priest"]= 0,["Death Knight"]= 0,["Shaman"]= 0,["Mage"]= 0,["Warlock"]= 0,["Monk"]= 0,["Druid"]= 0,["Demon Hunter"]= 0 }
Adv_Class["Paladin"] = {["Warrior"]= 0,["Paladin"]= 0,["Hunter"]= 0,["Rogue"]= 0,["Priest"]= 0,["Death Knight"]= 0,["Shaman"]= 0,["Mage"]= 0,["Warlock"]= 0,["Monk"]= 0,["Druid"]= 0,["Demon Hunter"]= 0 }
Adv_Class["Hunter"] = {["Warrior"]= 0,["Paladin"]= 0,["Hunter"]= 0,["Rogue"]= 0,["Priest"]= 0,["Death Knight"]= 0,["Shaman"]= 0,["Mage"]= 0,["Warlock"]= 0,["Monk"]= 0,["Druid"]= 0,["Demon Hunter"]= 0 }
Adv_Class["Rogue"] = {["Warrior"]= 0,["Paladin"]= 0,["Hunter"]= 0,["Rogue"]= 0,["Priest"]= 0,["Death Knight"]= 0,["Shaman"]= 0,["Mage"]= 0,["Warlock"]= 0,["Monk"]= 0,["Druid"]= 0,["Demon Hunter"]= 0 }
Adv_Class["Priest"] = {["Warrior"]= 0,["Paladin"]= 0,["Hunter"]= 0,["Rogue"]= 0,["Priest"]= 0,["Death Knight"]= 0,["Shaman"]= 0,["Mage"]= 0,["Warlock"]= 0,["Monk"]= 0,["Druid"]= 0,["Demon Hunter"]= 0 }
Adv_Class["Death Knight"] = {["Warrior"]= 0,["Paladin"]= 0,["Hunter"]= 0,["Rogue"]= 0,["Priest"]= 0,["Death Knight"]= 0,["Shaman"]= 0,["Mage"]= 0,["Warlock"]= 0,["Monk"]= 0,["Druid"]= 0,["Demon Hunter"]= 0 }
Adv_Class["Shaman"] = {["Warrior"]= 0,["Paladin"]= 0,["Hunter"]= 0,["Rogue"]= 0,["Priest"]= 0,["Death Knight"]= 0,["Shaman"]= 0,["Mage"]= 0,["Warlock"]= 0,["Monk"]= 0,["Druid"]= 0,["Demon Hunter"]= 0 }
Adv_Class["Mage"] = {["Warrior"]= 0,["Paladin"]= 0,["Hunter"]= 0,["Rogue"]= 0,["Priest"]= 0,["Death Knight"]= 0,["Shaman"]= 0,["Mage"]= 0,["Warlock"]= 0,["Monk"]= 0,["Druid"]= 0,["Demon Hunter"]= 0 }
Adv_Class["Warlock"] = {["Warrior"]= 0,["Paladin"]= 0,["Hunter"]= 0,["Rogue"]= 0,["Priest"]= 0,["Death Knight"]= 0,["Shaman"]= 0,["Mage"]= 0,["Warlock"]= 0,["Monk"]= 0,["Druid"]= 0,["Demon Hunter"]= 0 }
Adv_Class["Monk"] = {["Warrior"]= 0,["Paladin"]= 0,["Hunter"]= 0,["Rogue"]= 0,["Priest"]= 0,["Death Knight"]= 0,["Shaman"]= 0,["Mage"]= 0,["Warlock"]= 0,["Monk"]= 0,["Druid"]= 0,["Demon Hunter"]= 0 }
Adv_Class["Druid"] = {["Warrior"]= 0,["Paladin"]= 0,["Hunter"]= 0,["Rogue"]= 0,["Priest"]= 0,["Death Knight"]= 0,["Shaman"]= 0,["Mage"]= 0,["Warlock"]= 0,["Monk"]= 0,["Druid"]= 0,["Demon Hunter"]= 0 }
Adv_Class["Demon Hunter"] = {["Warrior"]= 0,["Paladin"]= 0,["Hunter"]= 0,["Rogue"]= 0,["Priest"]= 0,["Death Knight"]= 0,["Shaman"]= 0,["Mage"]= 0,["Warlock"]= 0,["Monk"]= 0,["Druid"]= 0,["Demon Hunter"]= 0 }

-- race advantages
Adv_Race = {}

Adv_Race[human]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
Adv_Race[night_elf]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
Adv_Race[dwarf]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
Adv_Race[gnome]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
Adv_Race[draenei]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
Adv_Race[worgen]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
Adv_Race[orc]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
Adv_Race[troll]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
Adv_Race[undead]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
Adv_Race[tauren]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
Adv_Race[blood_elf]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
Adv_Race[goblin]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
Adv_Race[pandaren]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
Adv_Race[void_elf]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
Adv_Race[nightborne]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
Adv_Race[highmountain_tauren]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
Adv_Race[lightforged_draenei]={human=0,night_elf=0,dwarf=0,gnome=0,draenei=0,worgen=0,orc=0,troll=0,undead=0,tauren=0,blood_elf=0,goblin=0,pandaren=0,void_elf=0,nightborne=0,highmountain_tauren=0,lightforged_draenei=0}
