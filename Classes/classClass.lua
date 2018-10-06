Class = {}
Class.__index = Class

function Class:Create(name, bonus_roll_att, bonus_roll_def,crit_damage,crit_chance)
   local class = {}             -- our new object
   setmetatable(class,Class)  -- make Class handle lookup
   class.name = name
   class.bonus_roll_att = bonus_roll_att
   class.bonus_roll_def = bonus_roll_def
   class.roll_multiplier_att = roll_multiplier_att
   class.roll_multiplier_def = roll_multiplier_def
   class.crit_damage = crit_damage or DEF_CRIT_DAMAGE
   class.crit_chance = crit_chance or DEF_CRIT_CHANCE
   --print("Created a class named " .. name .. " which has +" .. bonus_roll_att .. " bonus roll while attacking and +" ..  bonus_roll_def .. " bonus roll while defending.")
   return class
end

