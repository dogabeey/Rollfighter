Advantage = {}
Advantage.__index = Advantage

function Advantage:Create(adv_class, other_class, bonus_roll_att)
   local advantage = {}             -- our new object
   setmetatable(advantage,Advantage)  -- make Advantage handle lookup
   advantage.adv_class = adv_class
   advantage.other_class = other_class
   --print("Created a advantage named " .. name .. " which has +" .. bonus_roll_att .. " bonus roll while attacking and +" ..  bonus_roll_def .. " bonus roll while defending.")
   return advantage
end