dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger()
    local entity_id = EntityGetName()
    local pos_x, pos_y = EntityGetTransform( entity_id )

    dofile_once("data/entities/projectiles/mine_explosion.xml", x, y, vx, vy )

    EntityKill( entity_id )
end