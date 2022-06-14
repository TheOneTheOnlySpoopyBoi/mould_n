CHEST_LEVEL = 3
dofile_once("data/scripts/director_helpers.lua")
dofile_once("data/scripts/biome_scripts.lua")
dofile_once("data/scripts/lib/utilities.lua")

RegisterSpawnFunction( 0xffffeedd, "init" )
RegisterSpawnFunction( 0xff31d0b4, "spawn_essence" )

function init( x, y, w, h )
	LoadPixelScene( "data/biome_impl/essenceroom_submerged.png", "data/biome_impl/essenceroom_visual.png", x, y, "data/biome_impl/essenceroom_background_with_diamond.png", true )
end

function spawn_orb(x, y)
end

function spawn_essence(x, y)
	EntityLoad( "data/entities/items/pickup/essence_mystery.xml", x, y )
end