-- default biome functions that get called if we can't find a a specific biome that works for us
CHEST_LEVEL = 3
dofile_once("data/scripts/director_helpers.lua")
dofile_once("data/scripts/biome_scripts.lua")

RegisterSpawnFunction( 0xffffeedd, "init" )
RegisterSpawnFunction( 0xffb4a00a, "spawn_mines" )

g_mines =
{
	total_prob = 0,
	-- add skullflys after this step

	{
		prob   		= 1,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/mine_field_mine/mine_field_mine.xml"
	},
}

function init( x, y, w, h )
	-- LoadPixelScene( "data/biome_impl/mountain_lake.png", "", x, y, "", true )
	-- LoadPixelScene( "data/biome_impl/mountain_lake_top.png", "", x, y-88, "", true )
end

function spawn_mines(x, y)
	spawn(g_mines,x,y)
end