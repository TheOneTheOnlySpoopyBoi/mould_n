dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

function arch3_1 ()
    local rx = math.random(5500, 8100)
    local ry = math.random(130, 400)

    EntityLoad("mods/mould_n/data/entities/items/strange_leg.xml", rx, ry)

    print("arch3_1 success")
end

function arch3_2 ()
    local rx = math.random(5500, 8100)
    local ry = math.random(200, 400)

    EntityLoad("mods/mould_n/data/entities/items/desert_healing_wand.xml", rx, ry)

    print("arch3_2 success")
end

function arch3_3 ()
    local rx = math.random(5500, 8100)
    local ry = math.random(200, 400)

    EntityLoad("mods/mould_n/data/entities/items/squidward_pearl.xml", rx, ry)

    print("arch3_3 success")
end

function arch3_4 () 
    local rx = math.random(5500, 8100)
    local ry = math.random(50, 300)

    EntityLoad("data/entities/items/pickup/physics_gold_orb_greed.xml" , rx, ry)

    print("arch3_4 success")
end

for i=1,4 do arch3_1() end
for i=1,2 do arch3_2() end
for i=1,1 do arch3_3() end
for i=1,5 do arch3_4() end