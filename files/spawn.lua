dofile("data/scripts/lib/utilities.lua")


--mystery essence
if GameHasFlagRun("mysteryessence_spawned") == false then
    EntityLoad("data/entities/items/pickup/essence_mystery.xml" , 13059, -250)
    GameAddFlagRun("mysteryessence_spawned")
end

--lightsaber
if GameHasFlagRun("mould_saber_spawned") == false then
    dofile_once("mods/mould_n/files/scripts/spawn_saber.lua")
    
    GameAddFlagRun("mould_saber_spawned")
end


--spacestation
if GameHasFlagRun("mould_space_station") == false then
    EntityLoad("mods/mould_n/data/entities/animals/boss_space_station/boss_space_station.xml", -953, -3582)

    EntityLoad("mods/mould_n/data/entities/animals/boss_space_station/space_station_drone.xml", -953, -3582)
    EntityLoad("mods/mould_n/data/entities/animals/boss_space_station/space_station_drone.xml", -953, -3582)
    EntityLoad("mods/mould_n/data/entities/animals/boss_space_station/space_station_drone.xml", -953, -3582)
    EntityLoad("mods/mould_n/data/entities/animals/boss_space_station/space_station_drone.xml", -953, -3582)
    EntityLoad("mods/mould_n/data/entities/animals/boss_space_station/space_station_drone.xml", -953, -3582)

    GameAddFlagRun("mould_space_station")
end

--golden lukki
--[[if GameHasFlagRun("mould_boss_lukki") == false then
    EntityLoad("mods/mould_n/data/entities/animals/boss_lukki/boss_lukki.xml", -4300, 9830)

    GameAddFlagRun("mould_boss_lukki")
end]]--


--fungus worm
--[[if GameHasFlagRun("mould_boss_fungus_worm") == false then
    EntityLoad("mods/mould_n/data/entities/animals/boss_fungus_worm/boss_fungus_worm.xml" , 3300, 6400)

    GameAddFlagRun("mould_boss_fungus_worm")
end]]--


--lake spirit
if GameHasFlagRun("mould_boss_lake_spirit") == false then
    EntityLoad("mods/mould_n/data/entities/animals/boss_lake_spirit/boss_lake_spirit.xml" , -12446, -186)

    GameAddFlagRun("mould_boss_lake_spirit")
end

--arch1
if GameHasFlagRun("mould_arch1") == false then
    dofile_once("mods/mould_n/files/scripts/arch/arch_1.lua")

    EntityLoad("data/entities/items/pickup/arch_tablet.xml", 0, -100)

    GameAddFlagRun("mould_arch1")
end

--other
if GameHasFlagRun("mould_spawned") == false then

    EntityLoad("data/entities/buildings/rebirth_altar/rebirth_altar.xml", -10523, 9472)

    local pos_x = -1330
    local pos_y = -200
    local perk_id =	perk_spawn(pos_x, pos_y, "GLASS_CANNON", x, y)

    if( perk_id ~= nil ) then
        EntityAddComponent( perk_id, "VariableStorageComponent", 
        { 
            name = "perk_dont_remove_others",
            value_bool = "1",
        } )
    end

    GameAddFlagRun("mould_spawned")
end