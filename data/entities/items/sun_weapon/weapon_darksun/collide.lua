dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger(colliding_entity_id)
    local entity_id = EntityGetName()
    local x, y = EntityGetTransform( entity_id )

    --GamePrint("1")
    if (EntityHasTag(colliding_entity_id, "mortal")) then
        return
    elseif (EntityHasTag(colliding_entity_id, "newsun")) then
        EntityKill(colliding_entity_id)

        EntityLoad("mods/mould_n/data/entities/items/sun_weapon/weapon_balance/sun_weapon_balance.xml", x, y) 
        EntityLoad("data/entities/particles/image_emitters/altar_tablet_curse_symbol.xml", x, y)

        EntityKill(entity_id)
    end
end