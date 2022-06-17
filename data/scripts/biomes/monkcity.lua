CHEST_LEVEL = 3
dofile_once("data/scripts/director_helpers.lua")
dofile_once("data/scripts/director_helpers_design.lua")
dofile_once("data/scripts/biome_scripts.lua")

RegisterSpawnFunction( 0xffffeedd, "init" )
RegisterSpawnFunction( 0xff528900, "spawn_monks" )
RegisterSpawnFunction( 0xff400080, "spawn_miniboss" ) 


g_monks =
{
	total_prob = 0,

	{
		prob   		= 0.8,
		min_count	= 1,
		max_count	= 2,    
		entity 	= "data/entities/animals/monk.xml"
	},
	{
		prob   		= 0.2,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/monk_ice.xml"
	},
}

g_miniboss =
{
	total_prob = 0,

	{
		prob   		= 1,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "data/entities/animals/jason.xml"
	},
}

function spawn_monks(x, y)
	spawn(g_monks,x,y)
end

function spawn_miniboss(x, y)
	spawn(g_miniboss,x,y)
end

function init( x, y, w, h )
	--LoadPixelScene( "data/biome_impl/coral_reef_shrine.png", "", x, y, "", true )
end