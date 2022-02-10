dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger(colliding_entity_id)
    local entity_id = EntityGetName()
    local x, y = EntityGetTransform( entity_id )

    --GamePrint("1")
    if (EntityHasTag(colliding_entity_id, "mortal")) then
        return
    elseif (EntityHasTag(colliding_entity_id, "sun_weapon_darksun")) then
        EntityKill(colliding_entity_id)

        --entityload sun weapon balance

        EntityKill(entity_id)
    end
end