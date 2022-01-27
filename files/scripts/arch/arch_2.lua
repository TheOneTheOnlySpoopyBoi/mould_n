dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

function arch2_1 () 
    local rx = math.random(5500, 8100)
    local ry = math.random(0, 250)

    EntityLoad("data/entities/items/pickup/moon.xml" , rx, ry)

    print("arch2_1 success")
end

function arch2_2 ()
    local rx = math.random(5500, 8100)
    local ry = math.random(100, 400)

    EntityLoad("mods/mould_n/data/entities/items/hiisi_healer_gun.xml", rx, ry)

    print("arch2_2 success")
end

function arch2_3 ()
    local rx = math.random(5500, 8100)
    local ry = math.random(130, 400)

    EntityLoad("mods/mould_n/data/entities/items/strange_leg.xml", rx, ry)

    print("arch2_3 success")
end

function arch2_4 ()
    local rx = math.random(5500, 8100)
    local ry = math.random(200, 400)

    EntityLoad("mods/mould_n/data/entities/items/desert_healing_wand.xml", rx, ry)

    print("arch2_4 success")
end

for i=1,5 do arch2_1() end
for i=1,5 do arch2_2() end
for i=1,4 do arch2_3() end
for i=1,3 do arch2_4() end