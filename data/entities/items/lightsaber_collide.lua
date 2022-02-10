dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger(colliding_entity_id)
    local entity_id = EntityGetName()
    local x, y = EntityGetTransform( entity_id )

    if (EntityHasTag(colliding_entity_id, "mortal")) then
        return
    elseif (EntityHasTag(colliding_entity_id, "newsun")) then
        EntityKill(colliding_entity_id)
        
        EntityLoad("mods/mould_n/data/entities/items/sun_weapon/weapon_newsun/sun_weapon_newsun.lua", x, y)

        EntityKill(entity_id)
    end
    if (EntityHasTag(colliding_entity_id, "newsun_dark")) then
        EntityKill(colliding_entity_id)
       
        --EntityLoad("mods/mould_n/data/entities/items/sun_weapon/weapon_darksun/sun_weapon_darksun.lua", x, y) --nyi

        EntityKill(entity_id)
    end
end