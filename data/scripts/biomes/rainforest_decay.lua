-- default biome functions that get called if we can't find a a specific biome that works for us
-- The level of action ids that are spawned from the chests
CHEST_LEVEL = 2
dofile_once("data/scripts/director_helpers.lua")
dofile_once("data/scripts/biome_scripts.lua")
dofile_once("data/scripts/biome_modifiers.lua")
dofile_once("data/scripts/biomes/summon_portal_util.lua")

RegisterSpawnFunction( 0xffffeedd, "init" )
RegisterSpawnFunction( 0xff400000, "spawn_lukki" )
RegisterSpawnFunction( 0xff0000ff, "spawn_nest" )
RegisterSpawnFunction( 0xff30b3b0, "spawn_physics_fungus" )

------------ SMALL ENEMIES ----------------------------------------------------

g_small_enemies =
{
	total_prob = 0,
	-- this is air, so nothing spawns at 0.6
	{
		prob   		= 0.5,
		min_count	= 0,
		max_count	= 0,    
		entity 	= ""
	},
	-- add skullflys after this step
	{
		prob   		= 0.3,
		min_count	= 2,
		max_count	= 4,    
		entity 	= "data/entities/animals/lukki/lukki.xml"
	},
	{
		prob   		= 0.09,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/lukki/lukki_longleg.xml"
	},
	{
		prob   		= 0.09,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/lukki/lukki.xml"
	},
	{
		prob   		= 0.1,
		min_count	= 1,
		max_count	= 2,    
		entity 	= "data/entities/animals/rainforest/shooterflower.xml"
	},
	{
		prob   		= 0.09,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/worm.xml"
	},
	{
		prob   		= 0.09,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/crypt/maggot.xml"
	},
	{
		prob   		= 0.2,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/projectiles/longleg.xml"
	},
	{
		prob   		= 0.1,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/rainforest/bloom.xml"
	},
	{
		prob   		= 0.02,
		min_count	= 1,
		max_count	= 3,    
		entity 	= "data/entities/animals/wizard_swapper.xml"
	},
	{
		prob   		= 0.02,
		min_count	= 1,
		max_count	= 3,    
		entity 	= "data/entities/animals/wizard_poly.xml"
	},
	{
		prob   		= 0.05,
		min_count	= 1,
		max_count	= 1,    
		entities 	= 
		{
			"data/entities/animals/rainforest/scavenger_smg.xml",
			"data/entities/animals/rainforest/scavenger_grenade.xml",
			"data/entities/animals/rainforest/coward.xml",
		},
	},
}


------------ BIG ENEMIES ------------------------------------------------------

g_big_enemies =
{
	total_prob = 0,
	-- this is air, so nothing spawns at 0.6
	{
		prob   		= 0.6,
		min_count	= 0,
		max_count	= 0,    
		entity 	= ""
	},
	-- add skullflys after this step
	{
		prob   		= 0.1,
		min_count	= 2,
		max_count	= 3,    
		entity 	= "data/entities/animals/rainforest/fungus.xml"
	},
	{
		prob   		= 0.09,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/lukki/lukki_longleg.xml"
	},
	{
		prob   		= 0.1,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/rainforest/bloom.xml"
	},
	{
		prob   		= 0.1,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/rainforest/scavenger_mine.xml"
	},
	{
		prob   		= 0.05,
		min_count	= 1,
		max_count	= 1,    
		entities 	= 
		{
			"data/entities/animals/rainforest/scavenger_poison.xml",
			"data/entities/animals/rainforest/scavenger_clusterbomb.xml",
		},
	},
	{
		prob   		= 0.05,
		min_count	= 1,
		max_count	= 1,    
		entities 	= 
		{
			"data/entities/animals/rainforest/scavenger_poison.xml",
			"data/entities/animals/rainforest/scavenger_clusterbomb.xml",
			"data/entities/animals/rainforest/scavenger_heal.xml",
		},
	},
	{
		prob   		= 0.1,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/projectiles/mine.xml"
	},
	{
		prob   		= 0.1,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/rainforest/shooterflower.xml"
	},
	{
		prob   		= 0.09,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/lukki/lukki.xml"
	},
	{
		prob   		= 0.03,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/spearbot.xml"
	},
	{
		prob   		= 0.03,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/wizard_hearty.xml"
	},
	{
		prob   		= 0.05,
		min_count	= 1,
		max_count	= 1,
		ngpluslevel	= 1,
		entities 	= 
		{
			"data/entities/animals/rainforest/scavenger_poison.xml",
			"data/entities/animals/rainforest/scavenger_clusterbomb.xml",
			"data/entities/animals/rainforest/scavenger_leader.xml",
			"data/entities/animals/rainforest/coward.xml",
		},
	},
}

------------ ITEMS ------------------------------------------------------------

g_items =
{
	total_prob = 0,
	-- this is air, so nothing spawns at 0.6
	{
		prob   		= 0,
		min_count	= 0,
		max_count	= 0,    
		entity 	= ""
	},
	-- add skullflys after this step
	{
		prob   		= 5,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/items/wand_unshuffle_04.xml"
	},
	{
		prob   		= 5,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/items/wand_unshuffle_06.xml"
	},
}

------------ MISC --------------------------------------

g_nest =
{
	total_prob = 0,
	{
		prob   		= 0.5,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/buildings/flynest.xml"
	},
	{
		prob   		= 0.5,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/buildings/spidernest.xml"
	},
}

g_physics_fungi =
{
	total_prob = 0,
	{
		prob   		= 1.0,
		min_count	= 0,
		max_count	= 0,    
		entity 	= ""
	},
	{
		prob   		= 1.0,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/props/physics_fungus_small.xml"
	},
	{
		prob   		= 1.0,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/props/physics_fungus.xml"
	},
	{
		prob   		= 0.5,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/props/physics_fungus_big.xml"
	},
}

------------------- LUKKIS --------------------------

g_lukki =
{
	total_prob = 0,
	{
		prob   		= 0.5,
		min_count	= 0,
		max_count	= 0,    
		entity 	= ""
	},
	{
		prob   		= 0.5,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/lukki/lukki_creepy_long.xml"
	},
	{
		prob   		= 0.5,
		min_count	= 1,
		max_count	= 2,    
		entity 	= "data/entities/animals/lukki/lukki.xml"
	},
	{
		prob   		= 0.01,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/lukki/lukki_dark.xml"
	},
}

g_props =
{
	total_prob = 0,
	{
		prob   		= 0.5,
		min_count	= 0,
		max_count	= 0,    
		entity 	= ""
	},
	{
		prob   		= 0.5,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/props/physics_barrel_radioactive.xml"
	},
}

g_ghostlamp =
{
	total_prob = 0,
	-- add skullflys after this step
	{
		prob   		= 1.0,
		min_count	= 1,
		max_count	= 1,    
		offset_y	= 10,
		entity 	= "data/entities/props/physics_chain_torch_ghostly.xml"
	},
}

g_candles =
{
	total_prob = 0,
	{
		prob   		= 0.33,
		min_count	= 1,
		max_count	= 1, 
		entity 	= "data/entities/props/physics_candle_1.xml"
	},
	{
		prob   		= 0.33,
		min_count	= 1,
		max_count	= 1, 
		entity 	= "data/entities/props/physics_candle_2.xml"
	},
	{
		prob   		= 0.33,
		min_count	= 1,
		max_count	= 1, 
		entity 	= "data/entities/props/physics_candle_3.xml"
	},
}

g_potions =
{
	total_prob = 0,
	{
		prob   		= 0.5,
		min_count	= 1,
		max_count	= 1,    
		entity 	= ""
	},
}

-- actual functions that get called from the wang generator

function init(x, y, w, h)
	-- rain forest area secret portal spawn check
	-- NOTE: copied from rainforest.lua. Make sure random seeds/positions match!
	local function is_inside_tile(pos_x, pos_y)
		return pos_x >= x and pos_x <= x+w 
		and pos_y >= y and pos_y <= y+h
	end

	local portal_x, portal_y = get_portal_position()
	-- portal target
	if is_inside_tile(portal_x, portal_y) then
		-- spawn
		--print("spawned portal target at " .. portal_x .. ", " .. portal_y)
		EntityLoad( "data/entities/misc/summon_portal_target.xml", portal_x, portal_y )
		-- add some empty for the return teleporter target
		LoadPixelScene( "data/biome_impl/hole.png", "", portal_x-22, portal_y-22, "", true )
	end
end

function spawn_small_enemies(x, y)
	spawn(g_small_enemies,x,y)
end

function spawn_big_enemies(x, y)
	spawn(g_big_enemies,x,y)
end

function spawn_items(x, y)
	local r = ProceduralRandom( x-11.631, y+10.2257 )
	
	if (r > 0.06) then
		LoadPixelScene( "data/biome_impl/wand_altar.png", "data/biome_impl/wand_altar_visual.png", x-10, y-17, "", true )
	end
end

function spawn_nest(x, y)
	spawn(g_nest,x,y)
end

function spawn_lukki(x, y)
	spawn(g_lukki,x,y)
end

function spawn_props(x, y)
	spawn(g_props,x,y)
end

function spawn_potion_altar(x, y)
	--spawn(g_potions,x,y)
	LoadPixelScene( "data/biome_impl/potion_altar.png", "data/biome_impl/potion_altar_visual.png", x-10, y-17, "", true )
end

function spawn_physics_fungus(x, y)
	spawn(g_physics_fungi,x,y)
end

function spawn_lamp(x, y) end
function load_pixel_scene( x, y ) end
function load_pixel_scene2( x, y ) end
function spawn_props2( x, y ) end
function spawn_props3( x, y ) end
function spawn_unique_enemy( x, y ) end
function spawn_unique_enemy2( x, y ) end
function spawn_unique_enemy3( x, y ) end
function spawn_ghostlamp( x, y ) end
function spawn_candles( x, y ) end