Race = {}
Race.__index = Race

function Race:Create(name, bonus_roll_att,bonus_roll_def,crit_damage,crit_chance)
   local race = {}             -- our new object
   setmetatable(race,Race)  -- make Race handle lookup
   race.name = name
   race.bonus_roll_att = bonus_roll_att
   race.bonus_roll_def = bonus_roll_def
   race.roll_multiplier_att = roll_multiplier_att
   race.roll_multiplier_def = roll_multiplier_def
   race.crit_damage = crit_damage or GLOBAL.DEF_CRIT_DAMAGE
   race.crit_chance = crit_chance or GLOBAL.DEF_CRIT_CHANCE
   --print("Created a race named " .. name .. " which has +" .. bonus_roll_att .. " bonus roll while attacking and +" ..  bonus_roll_def .. " bonus roll while defending.")
   return race
end

