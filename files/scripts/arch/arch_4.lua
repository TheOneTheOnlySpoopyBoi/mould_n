dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

function arch4_1 ()
    local rx = math.random(5500, 8100)
    local ry = math.random(130, 400)

    EntityLoad("mods/mould_n/data/entities/items/robot_ice_gun.xml", rx, ry)

    print("arch4_1 success")
end

function arch4_2 ()
    local rx = math.random(5500, 8100)
    local ry = math.random(130, 400)

    EntityLoad("mods/mould_n/data/entities/items/robot_fire_gun.xml", rx, ry)

    print("arch4_2 success")
end

function arch4_3 ()
    local rx = math.random(5500, 8100)
    local ry = math.random(130, 400)

    EntityLoad("mods/mould_n/data/entities/items/robot_disc_weapon.xml", rx, ry)

    print("arch4_3 success")
end

for i=1,4 do arch4_1() end
for i=1,4 do arch4_2() end
for i=1,4 do arch4_3() end