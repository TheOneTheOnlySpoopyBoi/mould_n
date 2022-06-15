CHEST_LEVEL = 3
dofile_once("data/scripts/director_helpers.lua")
dofile_once("data/scripts/biome_scripts.lua")

RegisterSpawnFunction( 0xffffeedd, "init" )
RegisterSpawnFunction( 0xff528900, "spawn_monks" ) --0xffffdd35


g_monks =
{
	total_prob = 0,

	{
		prob   		= 1,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/monk.xml"
	},
}

function spawn_monks(x, y)
	spawn(g_monks,x,y)
end

function init( x, y, w, h )
	--LoadPixelScene( "data/biome_impl/coral_reef_shrine.png", "", x, y, "", true )
end