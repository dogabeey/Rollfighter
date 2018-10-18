Zone = {}
Zone.__index = Zone

function Zone:Create(name, bonus_roll_att,bonus_roll_def,roll_multiplier_att,roll_multiplier_def)
   local zone = {}             -- our new object
   setmetatable(zone,Zone)  -- make Zone handle lookup
   zone.name = name
   zone.bonus_roll_att = bonus_roll_att
   zone.bonus_roll_def = bonus_roll_def
   zone.roll_multiplier_att = roll_multiplier_att
   zone.roll_multiplier_def = roll_multiplier_def
   ----print("Created a zone named " .. name .. " which has +" .. bonus_roll_att .. " bonus roll while attacking and +" ..  bonus_roll_def .. " bonus roll while defending.")
   return zone
end

