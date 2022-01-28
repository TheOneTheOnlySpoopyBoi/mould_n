dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

dofile_once("mods/mould_n/files/scripts/arch/arch_1.lua")
dofile_once("mods/mould_n/files/scripts/arch/arch_2.lua")
dofile_once("mods/mould_n/files/scripts/arch/arch_3.lua")
dofile_once("mods/mould_n/files/scripts/arch/arch_4.lua")

function arch5_1 ()
    local rx = math.random(5500, 8100)
    local ry = math.random(130, 400)

    EntityLoad("mods/mould_n/data/entities/items/sandstorm_sceptre.xml", rx, ry)

    print("arch5_1 success")
end

function arch5_2 ()
    local rx = math.random(5500, 8100)
    local ry = math.random(130, 400)

    EntityLoad("mods/mould_n/data/entities/items/start_wand.xml", rx, ry)

    print("arch5_2 success")
end

function arch5_3 ()
    local rx = math.random(5500, 8100)
    local ry = math.random(130, 400)

    EntityLoad("mods/mould_n/data/entities/items/start_wand_digging.xml", rx, ry)

    print("arch5_3 success")
end

function arch5_4 ()
    local rx = math.random(5500, 8100)
    local ry = math.random(130, 400)

    EntityLoad("mods/mould_n/data/entities/items/mina_pearl.xml", rx, ry)

    print("arch5_4 success")
end

for i=1,1 do arch5_1() end
for i=1,2 do arch5_2() end
for i=1,2 do arch5_3() end
for i=1,2 do arch5_4() end