dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger(colliding_entity_id)
    local entity_id = EntityGetName()
    local pos_x, pos_y = EntityGetTransform( entity_id )

    --EntityLoad( "data/entities/projectiles/mine_explosion.xml", pos_x, pos_y )

    EntityKill(entity_id)
end