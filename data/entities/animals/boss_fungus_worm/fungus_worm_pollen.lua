dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local x,y = EntityGetTransform( entity_id )

local targets = EntityGetInRadiusWithTag( x, y, 114, "player_unit" )

if ( #targets > 0 ) then
	SetRandomSeed( x + entity_id, y + GameGetFrameNum() )
	
	shoot_projectile( entity_id, "data/entities/animals/boss_fungus_worm/pollen_worm.xml", x, y, Random( -300, 300 ), Random( -300, 10 ) )
end