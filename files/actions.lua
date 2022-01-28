local to_insert = {
    {
        id                 = "RA",
        name               = "Ra",
        description        = "Praise the Sun God!",
        sprite             = "data/ui_gfx/gun_actions/ra.png",
        type               = ACTION_TYPE_PROJECTILE,
        spawn_level        = "6,10",
        spawn_probability  = "1,1",
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
}

for k, v in ipairs(to_insert) do
    table.insert(actions, v)
end