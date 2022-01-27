dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

function arch1_1 () 
    local rx = math.random(5500, 8100)
    local ry = math.random(0, 250)

    EntityLoad("data/entities/items/pickup/broken_wand.xml" , rx, ry)

    print("arch1_1 success")
end

function arch1_2 () 
    local rx = math.random(5500, 8100)
    local ry = math.random(50, 300)

    EntityLoad("data/entities/items/pickup/physics_gold_orb.xml" , rx, ry)

    print("arch1_2 success")
end

function arch1_3 ()
    local rx = math.random(5500, 8100)
    local ry = math.random(110, 400)

    EntityLoad("mods/mould_n/data/entities/items/desert_frost.xml", rx, ry)

    print("arch1_3 success")
end

function arch1_4 ()
    local rx = math.random(5500, 8100)
    local ry = math.random(110, 300)

    EntityLoad("mods/mould_n/data/entities/items/mining_mole_wand.xml", rx, ry)

    print("arch1_4 success")
end

function arch1_5 ()
    local rx = math.random(5500, 8100)
    local ry = math.random(100, 400)

    EntityLoad("mods/mould_n/data/entities/items/hiisi_gun.xml", rx, ry)

    print("arch1_5 success")
end

for i=1,9 do arch1_1() end
for i=1,5 do arch1_2() end
for i=1,4 do arch1_3() end
for i=1,3 do arch1_4() end
for i=1,6 do arch1_5() end