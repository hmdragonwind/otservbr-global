local mType = Game.createMonsterType("Enslaved Dwarf")
local monster = {}

monster.description = "an enslaved dwarf"
monster.experience = 2700
monster.outfit = {
	lookType = 494,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.health = 3800
monster.maxHealth = 3800
monster.race = "blood"
monster.corpse = 17408
monster.speed = 270
monster.summonCost = 0
monster.maxSummons = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false
}

monster.light = {
	level = 0,
	color = 0
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{text = "Bark!", yell = false},
	{text = "Blood!", yell = false}
}

monster.loot = {
	{id = "gold coin", chance = 50000, maxCount = 99},
	{id = "gold coin", chance = 50000, maxCount = 50},
	{id = "small emerald", chance = 10290, maxCount = 2},
	{id = "small amethyst", chance = 10680, maxCount = 2},
	{id = "platinum coin", chance = 100000, maxCount = 6},
	{id = "axe ring", chance = 1550},
	{id = "war hammer", chance = 5050},
	{id = "warrior helmet", chance = 580},
	{id = "guardian shield", chance = 2300},
	{id = "tower shield", chance = 190},
	{id = "ancient shield", chance = 3690},
	{id = "brown mushroom", chance = 15150, maxCount = 2},
	{id = "iron ore", chance = 11070},
	{id = "titan axe", chance = 1170},
	{id = "sapphire hammer", chance = 80},
	{id = "spiked squelcher", chance = 80},
	{id = "glorious axe", chance = 1940},
	{id = "great mana potion", chance = 6660, maxCount = 2},
	{id = "great health potion", chance = 7960},
	{id = "shiny stone", chance = 4660},
	{id = 13757, chance = 780},
	{id = "green crystal shard", chance = 1750},
	{id = "green crystal splinter", chance = 3110},
	{id = "brown crystal splinter", chance = 5630, maxCount = 2},
	{id = "red crystal fragment", chance = 3690},
	{id = "drill bolt", chance = 3690, maxCount = 5}
}

monster.attacks = {
	{name ="melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -501, effect = CONST_ME_DRAWBLOOD},
	{name ="combat", interval = 2000, chance = 15, minDamage = 0, maxDamage = -340, type = COMBAT_PHYSICALDAMAGE, range = 7, shootEffect = CONST_ANI_LARGEROCK, target = false},
	{name ="combat", interval = 2000, chance = 10, minDamage = 0, maxDamage = -250, type = COMBAT_PHYSICALDAMAGE, range = 7, shootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_EXPLOSIONHIT, target = true},
	{name ="drunk", interval = 2000, chance = 20, effect = CONST_ME_BLOCKHIT, target = false},
	{name ="combat", interval = 2000, chance = 5, target = false},
	{name ="combat", interval = 2000, chance = 5, target = false}
}

monster.defenses = {
	defense = 30,
	armor = 30,
	{name ="combat", interval = 2000, chance = 10, minDamage = 396, maxDamage = 478, type = COMBAT_HEALING, effect = CONST_ME_MAGIC_GREEN, target = false}
}

monster.elements = {
	{type = COMBAT_PHYSICALDAMAGE, percent = 0},
	{type = COMBAT_ENERGYDAMAGE, percent = 10},
	{type = COMBAT_EARTHDAMAGE, percent = 20},
	{type = COMBAT_FIREDAMAGE, percent = 100},
	{type = COMBAT_LIFEDRAIN, percent = 0},
	{type = COMBAT_MANADRAIN, percent = 0},
	{type = COMBAT_DROWNDAMAGE, percent = 0},
	{type = COMBAT_ICEDAMAGE, percent = 1},
	{type = COMBAT_HOLYDAMAGE , percent = 0},
	{type = COMBAT_DEATHDAMAGE , percent = 1}
}

monster.immunities = {
	{type = "paralyze", condition = true},
	{type = "outfit", condition = false},
	{type = "invisible", condition = true},
	{type = "bleed", condition = false}
}

mType:register(monster)