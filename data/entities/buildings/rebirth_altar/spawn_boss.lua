dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger(colliding_entity_id)
    local entity_id = EntityGetName()
    --local x, y = EntityGetTransform( entity_id )

    --GamePrint("1")
    if (EntityHasTag(colliding_entity_id, "mortal")) then
        return
    elseif (EntityHasTag(colliding_entity_id, "rebirth_tablet_leviathan")) then
        EntityKill(colliding_entity_id)

        EntityLoad("data/entities/animals/boss_fish_reborn/fish_giga_reborn.xml", -10523, 9622)

        GamePrintImportant("THE ALTAR SHAKES", "Something is here...")
        GamePlaySound( "data/audio/Desktop/event_cues.bank", "event_cues/orb_distant_monster/create", -10523, 9422 )
        GameScreenshake( 100 )
        EntityLoad("data/entities/particles/rebirth.xml", -10523, 9522)
    end
    if (EntityHasTag(colliding_entity_id, "rebirth_tablet_lady")) then
        EntityKill(colliding_entity_id)

        EntityLoad("data/entities/animals/boss_lady_reborn/boss_lake_spirit.xml", -10523, 9322)

        GamePrintImportant("THE ALTAR SHAKES", "Something is here...")
        GamePlaySound( "data/audio/Desktop/event_cues.bank", "event_cues/orb_distant_monster/create", -10523, 9422 )
        GameScreenshake( 100 )
        EntityLoad("data/entities/particles/rebirth.xml", -10523, 9522)
    end
    if (EntityHasTag(colliding_entity_id, "rebirth_tablet_dragon")) then
        EntityKill(colliding_entity_id)

        EntityLoad("data/entities/animals/boss_dragon_reborn/boss_dragon_reborn.xml", -10523, 9322)
        EntityLoad("data/entities/animals/boss_dragon_reborn/boss_dragon_reborn.xml", -10523, 9322)
        EntityLoad("data/entities/animals/boss_dragon_reborn/boss_dragon_reborn.xml", -10523, 9322)
        EntityLoad("data/entities/animals/boss_dragon_reborn/boss_dragon_reborn.xml", -10523, 9322)
        EntityLoad("data/entities/animals/boss_dragon_reborn/boss_dragon_reborn.xml", -10523, 9322)

        GamePrintImportant("THE ALTAR SHAKES", "Something is here...")
        GamePlaySound( "data/audio/Desktop/event_cues.bank", "event_cues/orb_distant_monster/create", -10523, 9422 )
        GameScreenshake( 100 )
        EntityLoad("data/entities/particles/rebirth.xml", -10523, 9522)
    end

    --GamePrint("2")

end