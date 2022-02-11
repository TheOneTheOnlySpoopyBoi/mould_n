local to_insert = {
    {
        id                 = "RA",
        name               = "Ra",
        description        = "Praise the Sun God!",
        sprite             = "data/ui_gfx/gun_actions/ra.png",
        type               = ACTION_TYPE_PROJECTILE,
        spawn_level        = "6,10",
        spawn_probability  = "0.2,0.8",
        price              = 160,
        mana               = 400,
        max_uses           = 1,
        action = function()
            add_projectile("data/entities/projectiles/ra.xml")
        end,
    },
    {
		id          = "BURNING_GAZE",
		name 		= "Burning Gaze",
		description = "A heart-burningly sinister aura",
		sprite 		= "data/ui_gfx/gun_actions/burning_gaze.png",
		sprite_unidentified = "data/ui_gfx/gun_actions/dynamite_unidentified.png",
		related_projectiles	= {"data/entities/projectiles/burning_gaze_beam.xml",12},
		type 		= ACTION_TYPE_PROJECTILE,
		spawn_level                       = "2,3,4",
		spawn_probability                 = "1,1,1",
		price = 180,
		mana = 45,
		max_uses	= 20,
		action 		= function()
			add_projectile("data/entities/projectiles/burning_gaze_beam.xml")
			add_projectile("data/entities/projectiles/burning_gaze_beam.xml")
			add_projectile("data/entities/projectiles/burning_gaze_beam.xml")
            add_projectile("data/entities/projectiles/burning_gaze_beam.xml")
            add_projectile("data/entities/projectiles/burning_gaze_beam.xml")
            add_projectile("data/entities/projectiles/burning_gaze_beam.xml")
            add_projectile("data/entities/projectiles/burning_gaze_beam.xml")
            add_projectile("data/entities/projectiles/burning_gaze_beam.xml")
            add_projectile("data/entities/projectiles/burning_gaze_beam.xml")
            add_projectile("data/entities/projectiles/burning_gaze_beam.xml")
            add_projectile("data/entities/projectiles/burning_gaze_beam.xml")
            add_projectile("data/entities/projectiles/burning_gaze_beam.xml")
			c.pattern_degrees = 30
			c.fire_rate_wait = c.fire_rate_wait + 20
		end,
	},
    {
        id          = "RASPUTIN",
        name         = "Rasputin",
        description = "Full of ecstasy and fire",
        sprite         = "data/ui_gfx/gun_actions/rasputin.png",
        related_extra_entities = { "data/entities/misc/rasputin.xml" },
        type         = ACTION_TYPE_MODIFIER,
        spawn_level                       = "5,6",
        spawn_probability                 = "0.8,0.8", 
        price = 160,
        mana = 40,
        action = function()
              c.extra_entities = c.extra_entities .. "data/entities/misc/rasputin.xml"
            c.fire_rate_wait = c.fire_rate_wait + 15
            c.explosion_radius = c.explosion_radius - 30.0
            c.damage_explosion_add = c.damage_explosion_add + 50
            draw_actions( 1, true )
        end,
    },
    {
		id          = "FUNGUS_WORM_RAIN",
		name 		= "Sienimatosade",
		description = "Alea iacta est",
		sprite 		= "data/ui_gfx/gun_actions/fungus_worm_rain.png",
		sprite_unidentified = "data/ui_gfx/gun_actions/bomb_unidentified.png",
		related_projectiles	= {"data/entities/animals/boss_fungus_worm/boss_fungus_worm.xml"},
		spawn_requires_flag = "card_unlocked_rain",
		never_unlimited		= true,
		type 		= ACTION_TYPE_STATIC_PROJECTILE,
		spawn_level                       = "6,10",
		spawn_probability                 = "0.1,0.8",
		price = 350,
		mana = 350, 
		max_uses    = 2, 
		custom_xml_file = "data/entities/misc/fungus_worm_rain.xml",
		action 		= function()
			add_projectile("data/entities/projectiles/fungus_worm_rain.xml")
			c.fire_rate_wait = c.fire_rate_wait + 100
			current_reload_time = current_reload_time + 60
		end,
	},
    {
		id          = "EXCALIBUR",
		name 		= "Excalibur",
		description = "Strange women lying in ponds distributing swords is no basis for a system of government",
		sprite 		= "data/ui_gfx/gun_actions/excalibur.png",
		sprite_unidentified = "data/ui_gfx/gun_actions/chainsaw_unidentified.png",
		related_projectiles	= {"data/entities/projectiles/excalibur.xml"},
		type 		= ACTION_TYPE_PROJECTILE,
		spawn_level                       = "6",
		spawn_probability                 = "0", 
		price = 80,
		mana = 1,
		--max_uses = 1000,
		action 		= function()
			add_projectile("data/entities/projectiles/excalibur.xml")
			c.fire_rate_wait = 0
		end,
	},
	{
		id          = "EXCALIBUR_REBORN",
		name 		= "Excalibur Reborn",
		description = "Strange women lying in ponds distributing swords is no basis for a system of government",
		sprite 		= "data/ui_gfx/gun_actions/excal_reborn.png",
		sprite_unidentified = "data/ui_gfx/gun_actions/disc_bullet_unidentified.png",
		spawn_requires_flag = "card_unlocked_everything",
		related_projectiles	= {"data/entities/projectiles/excal_reborn.xml"},
		type 		= ACTION_TYPE_PROJECTILE,
		spawn_level                       = "6",
		spawn_probability                 = "0", 
		price = 100,
		mana = 1,
		action 		= function()
			add_projectile("data/entities/projectiles/excal_reborn.xml")
			-- damage = 0.3
		end,
	},
	{
		id          = "RING_NEWSUN",
		name 		= "Flare of Light",
		description = "The power of the New Sun in the palm of your hand...",
		sprite 		= "data/ui_gfx/gun_actions/ring_newsun.png",
		sprite_unidentified = "data/ui_gfx/gun_actions/meteor_unidentified.png",
		related_projectiles	= {"data/entities/projectiles/ring_newsun.xml"},
		type 		= ACTION_TYPE_PROJECTILE,
		spawn_level                       = "10",
		spawn_probability                 = "0",
		price = 100,
		mana = 100,
		action 		= function()
			add_projectile("data/entities/projectiles/ring_newsun.xml")
		end,
	},
	{
		id          = "RING_DARKSUN",
		name 		= "Flare of Darkness",
		description = "The power of the Dark Sun in the palm of your hand...",
		sprite 		= "data/ui_gfx/gun_actions/ring_darksun.png",
		sprite_unidentified = "data/ui_gfx/gun_actions/meteor_unidentified.png",
		related_projectiles	= {"data/entities/projectiles/ring_darksun.xml"},
		type 		= ACTION_TYPE_PROJECTILE,
		spawn_level                       = "10",
		spawn_probability                 = "0",
		price = 100,
		mana = 100,
		action 		= function()
			add_projectile("data/entities/projectiles/ring_darksun.xml")
		end,
	},
	{
		id          = "RING_BALANCE",
		name 		= "Flare of Balance",
		description = "The power of the Fourth Egg in the palm of your hand...",
		sprite 		= "data/ui_gfx/gun_actions/ring_balance.png",
		sprite_unidentified = "data/ui_gfx/gun_actions/meteor_unidentified.png",
		related_projectiles	= {"data/entities/projectiles/ring_balance.xml"},
		type 		= ACTION_TYPE_PROJECTILE,
		spawn_level                       = "10",
		spawn_probability                 = "0",
		price = 100,
		mana = 100,
		action 		= function()
			add_projectile("data/entities/projectiles/ring_balance.xml")
		end,
	},
}

for k, v in ipairs(to_insert) do
    table.insert(actions, v)
end