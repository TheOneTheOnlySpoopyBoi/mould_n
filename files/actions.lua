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
            c.explosion_radius = c.explosion_radius + 70
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
	{
		id          = "DIVIDE_5",
		name 		= "Divide by 5",
		description = "The projectile is divided in five pieces with lower damage",
		sprite 		= "data/ui_gfx/gun_actions/divide_5.png",
		sprite_unidentified = "data/ui_gfx/gun_actions/spread_reduce_unidentified.png",
		spawn_requires_flag = "card_unlocked_musicbox",
		type 		= ACTION_TYPE_OTHER,
		spawn_level                       = "6,10",
		spawn_probability                 = "0.1,0.1",
		price = 300,
		mana = 80,
		action 		= function( recursion_level, iteration )
			c.fire_rate_wait = c.fire_rate_wait + 55
			
			local data = {}
			
			local iter = iteration or 1
			local iter_max = iteration or 1
			
			if ( #deck > 0 ) then
				data = deck[iter] or nil
			else
				data = nil
			end
			
			local count = 5
			if ( iter >= 5 ) then
				count = 1
			end
			
			local rec = check_recursion( data, recursion_level )
			
			if ( data ~= nil ) and ( rec > -1 ) and ( ( data.uses_remaining == nil ) or ( data.uses_remaining ~= 0 ) ) then
				local firerate = c.fire_rate_wait
				local reload = current_reload_time
				
				for i=1,count do
					if ( i == 1 ) then
						dont_draw_actions = true
					end
					local imax = data.action( rec, iter + 1 )
					dont_draw_actions = false
					if (imax ~= nil) then
						iter_max = imax
					end
				end
				
				if ( data.uses_remaining ~= nil ) and ( data.uses_remaining > 0 ) then
					data.uses_remaining = data.uses_remaining - 1
					
					local reduce_uses = ActionUsesRemainingChanged( data.inventoryitem_id, data.uses_remaining )
					if not reduce_uses then
						data.uses_remaining = data.uses_remaining + 1 -- cancel the reduction
					end
				end
				
				if (iter == 1) then
					c.fire_rate_wait = firerate
					current_reload_time = reload
					
					for i=1,iter_max do
						if (#deck > 0) then
							local d = deck[1]
							table.insert( discarded, d )
							table.remove( deck, 1 )
						end
					end
				end
			end
			
			c.damage_projectile_add = c.damage_projectile_add - 0.7
			c.explosion_radius = c.explosion_radius - 25.0
			if (c.explosion_radius < 0) then
				c.explosion_radius = 0
			end
			
			c.pattern_degrees = 5
			
			return iter_max
		end,
	},
	{
		id          = "HARODL",
		name 		= "Mol",
		description = "You're heavily advised to cast this spell.",
		sprite 		= "data/ui_gfx/gun_actions/harodl.png",
		sprite_unidentified = "data/ui_gfx/gun_actions/spread_reduce_unidentified.png",
		spawn_requires_flag = "card_unlocked_everything",
		spawn_manual_unlock = true,
		never_unlimited		= true,
		type 		= ACTION_TYPE_OTHER,
		recursive	= true,
		ai_never_uses = true,
		spawn_level                       = "10",
		spawn_probability                 = "0", 
		price = 1000,
		mana = 1000,
		max_uses    = 1,
		action 		= function()
			local players = EntityGetWithTag( "player_unit" )
			for i,v in ipairs( players ) do
				local x,y = EntityGetTransform( v )
				local eid = EntityLoad("data/entities/projectiles/harodl.xml", x, y)
			end
			c.fire_rate_wait = c.fire_rate_wait + 100
			current_reload_time = current_reload_time + 100
		end,
	},
	{
		id          = "HIISI_SHOTGUN",
		name 		= "Hiisi Shell",
		description = "Fires a shell made by the Hiisi.",
		sprite 		= "data/ui_gfx/gun_actions/hiisi_shotgun.png",
		sprite_unidentified = "data/ui_gfx/gun_actions/dynamite_unidentified.png",
		related_projectiles	= {"data/entities/projectiles/hiisi_shotgun.xml"},
		type 		= ACTION_TYPE_PROJECTILE,
		spawn_level                       = "0",
		spawn_probability                 = "0",
		price = 160,
		mana = 30,
		action 		= function()
			add_projectile("data/entities/projectiles/hiisi_shotgun.xml")
			add_projectile("data/entities/projectiles/hiisi_shotgun.xml")
			add_projectile("data/entities/projectiles/hiisi_shotgun.xml")
			c.fire_rate_wait = c.fire_rate_wait + 7
			c.spread_degrees = c.spread_degrees + 10.0
			c.screenshake = c.screenshake + 1.5
		end,
	},
	{
		id          = "HIISI_GUN",
		name 		= "Hiisi Bullet",
		description = "Fires a bullet made by the Hiisi.",
		sprite 		= "data/ui_gfx/gun_actions/hiisi_gun.png",
		sprite_unidentified = "data/ui_gfx/gun_actions/dynamite_unidentified.png",
		related_projectiles	= {"data/entities/projectiles/hiisi_gun.xml"},
		type 		= ACTION_TYPE_PROJECTILE,
		spawn_level                       = "0",
		spawn_probability                 = "0",
		price = 180,
		mana = 20,
		action 		= function()
			add_projectile("data/entities/projectiles/hiisi_gun.xml")
			c.fire_rate_wait = c.fire_rate_wait - 2
			c.screenshake = c.screenshake + 1.1
		end,
	},
	{
		id          = "HIISI_SNIPER",
		name 		= "Hiisi Round",
		description = "Fires a powerful projectile made by the Hiisi.",
		sprite 		= "data/ui_gfx/gun_actions/hiisi_sniper.png",
		sprite_unidentified = "data/ui_gfx/gun_actions/light_bullet_unidentified.png",
		related_projectiles	= {"data/entities/projectiles/hiisi_sniper.xml"},
		type 		= ACTION_TYPE_PROJECTILE,
		spawn_level                       = "0", -- LIGHT_BULLET
		spawn_probability                 = "0", -- LIGHT_BULLET
		price = 200,
		mana = 50,
		--max_uses = -1,
		action 		= function()
			add_projectile("data/entities/projectiles/hiisi_sniper.xml")
			c.fire_rate_wait = c.fire_rate_wait + 10
			c.screenshake = c.screenshake + 0.17
			c.spread_degrees = c.spread_degrees - 2.0
			c.damage_critical_chance = c.damage_critical_chance + 10
		end,
	},
	{
		id          = "HIISI_SNIPER_AIM",
		name 		= "Laser Sight",
		description = "For the unskilled.",
		sprite 		= "data/ui_gfx/gun_actions/hiisi_sniper_aim.png",
		sprite_unidentified = "data/ui_gfx/gun_actions/light_bullet_unidentified.png",
		type 		= ACTION_TYPE_PASSIVE,
		spawn_level                       = "0", -- LIGHT_BULLET
		spawn_probability                 = "0", -- LIGHT_BULLET
		price = 200,
		mana = 0,
		custom_xml_file="data/entities/misc/perks/laser_aim.xml",
		action 		= function()
			draw_actions( 1, true )
			c.damage_critical_chance = c.damage_critical_chance + 10
			c.fire_rate_wait = c.fire_rate_wait + 2
			c.screenshake = c.screenshake + 0.03

		end,
	}
}

for k, v in ipairs(to_insert) do
    table.insert(actions, v)
end