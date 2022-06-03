-- default biome functions that get called if we can't find a a specific biome that works for us
CHEST_LEVEL = 3
dofile_once("data/scripts/director_helpers.lua")
dofile_once("data/scripts/biome_scripts.lua")

RegisterSpawnFunction( 0xffffeedd, "init" )
RegisterSpawnFunction( 0xffffdd35, "spawn_fish" )

g_fish =
{
	total_prob = 0,
	-- add skullflys after this step
	{
		prob   		= 1,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/items/pickup/greensun_tablet.xml"
	},

	
}

function init( x, y, w, h )
	LoadPixelScene( "data/biome_impl/coral_reef_shrine.png", x, y)
end

function spawn_fish(x, y)
	spawn(g_fish,x,y)
end