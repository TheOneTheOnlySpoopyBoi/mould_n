dofile_once( "data/scripts/lib/utilities.lua" )

local entity_id    = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )

local targets = EntityGetInRadiusWithTag( x, y, 20, "human" )

GamePrint("work")

SetRandomSeed( pos_x + pos_y, GameGetFrameNum() )

if ( #targets > 0 ) then
    --local rnd = Random(1, #targets)
    --local target_id = targets[rnd]
    
    local vx = 0
    local vy = 0

    GamePrint("work1")

    shoot_projectile( entity_id, "data/entities/projectiles/mine_explosion.xml", x, y, vx, vy )

    GamePrint("work2")

    EntityKill( entity_id )
end