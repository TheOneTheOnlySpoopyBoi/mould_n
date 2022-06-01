dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger(colliding_entity_id)
    local entity_id = EntityGetName()
    --local x, y = EntityGetTransform( entity_id )

    local altarx = -10523
    local altary = 9422

    --GamePrint("1")
    if (EntityHasTag(colliding_entity_id, "mortal")) then
        return
    elseif (EntityHasTag(colliding_entity_id, "rebirth_tablet_leviathan")) then
        EntityKill(colliding_entity_id)

        EntityLoad("data/entities/animals/boss_fish_reborn/fish_giga_reborn.xml", altarx, altary)

        GamePrintImportant("THE ALTAR SHAKES", "Something is here...")
        GamePlaySound( "data/audio/Desktop/event_cues.bank", "event_cues/orb_distant_monster/create", altarx, altary)
        GameScreenshake( 100 )
        EntityLoad("data/entities/particles/rebirth.xml", altarx, altary)
    end
    if (EntityHasTag(colliding_entity_id, "rebirth_tablet_lady")) then
        EntityKill(colliding_entity_id)

        EntityLoad("data/entities/animals/boss_lady_reborn/boss_lake_spirit.xml", altarx, altary)

        GamePrintImportant("THE ALTAR SHAKES", "Something is here...")
        GamePlaySound( "data/audio/Desktop/event_cues.bank", "event_cues/orb_distant_monster/create", altarx, altary)
        GameScreenshake( 100 )
        EntityLoad("data/entities/particles/rebirth.xml", altarx, altary)
    end
    if (EntityHasTag(colliding_entity_id, "rebirth_tablet_dragon")) then
        EntityKill(colliding_entity_id)

        EntityLoad("data/entities/animals/boss_dragon_reborn/boss_dragon_reborn.xml", altarx, altary)
        EntityLoad("data/entities/animals/boss_dragon_reborn/boss_dragon_reborn.xml", altarx, altary)
        EntityLoad("data/entities/animals/boss_dragon_reborn/boss_dragon_reborn.xml", altarx, altary)
        EntityLoad("data/entities/animals/boss_dragon_reborn/boss_dragon_reborn.xml", altarx, altary)
        EntityLoad("data/entities/animals/boss_dragon_reborn/boss_dragon_reborn.xml", altarx, altary)

        GamePrintImportant("THE ALTAR SHAKES", "Something is here...")
        GamePlaySound( "data/audio/Desktop/event_cues.bank", "event_cues/orb_distant_monster/create", altarx, altary)
        GameScreenshake( 100 )
        EntityLoad("data/entities/particles/rebirth.xml", altarx, altary)
    end
    

    if (EntityHasTag(colliding_entity_id, "rebirth_tablet_alchemist")) then
        EntityKill(colliding_entity_id)

        EntityLoad("data/entities/animals/boss_alchemist_reborn/boss_reborn_alchemist.xml", altarx, altary)
    end

    if (EntityHasTag(colliding_entity_id, "crab")) then
        EntityKill(colliding_entity_id)

        EntityLoad("data/entities/animals/the_skeleton/the_skeleton.xml", altarx, altary)

        GamePrintImportant("THE ALTAR SHAKES", "THE SKELETON APPEARS...")
        GamePlaySound( "data/audio/Desktop/event_cues.bank", "event_cues/orb_distant_monster/create", altarx, altary)
        GameScreenshake( 100 )
        EntityLoad("data/entities/particles/rebirth.xml", altarx, altary)
    end

    --GamePrint("2")

end