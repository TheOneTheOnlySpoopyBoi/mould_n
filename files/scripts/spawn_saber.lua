dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

function spawnsaber ()
	local rx = math.random(14000, 12000)
    local ry = math.random(1000, -1000)

    EntityLoad("mods/mould_n/data/entities/items/lightsaber.xml", rx, ry)

end




--EntityLoad("mods/mould_n/data/entities/items/lightsaber.xml", 783, -1196)



for i=1,10 do spawnsaber() end