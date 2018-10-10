GLOBAL = {}

GLOBAL.DEF_ROLL = 100

GLOBAL.DEF_NORMAL_DAMAGE = 1
GLOBAL.DEF_CRIT_DAMAGE = 2 -- Default total damage when player critically hits.
GLOBAL.DEF_CRIT_CHANCE = 50 -- Default (attack - defend) roll difference to make an attack critical. SO ACTUALLY CHANCES -DROP- WHEN WE -INCREASE- THE NUMBER.

GLOBAL.MAX_HEALTH = 10
GLOBAL.NOTIFY_RANGE = 40 -- in yards. default is 40.

GLOBAL.ADVANTAGES = 
{
	CLASS =
	{
		WARRIOR =
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		PALADIN =
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		PRIEST =
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		HUNTER =
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		ROGUE =
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		SHAMAN =
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		WARLOCK =
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		DEATH_KNIGHT =
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		MAGE =
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		MONK =
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		DRUID =
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		DEMON_HUNTER =
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
	},
	RACE =
	{
		HUMAN = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		NIGHTELF = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		DWARF = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		GNOME = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		DRAENEI = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		WORGEN = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		ORC = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		TROLL = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		UNDEAD = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		TAUREN = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		BLOODELF = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		GOBLIN = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		PANDAREN = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		VOIDELF = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		NIGHTBORNE = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		HIGHMOUNTAIN = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
		LIGHTFORGED = 
		{
			ATTACK = 0,
			DEFEND = 0,
			CRIT_CHANCE = GLOBAL.DEF_CRIT_CHANCE,
			CRIT_DAMAGE = GLOBAL.DEF_CRIT_DAMAGE
		},
	}
}