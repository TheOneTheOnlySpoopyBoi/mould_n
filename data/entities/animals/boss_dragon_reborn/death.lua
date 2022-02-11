dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id = GetUpdatedEntityID()
	local x, y = EntityGetTransform( entity_id )

	local rr = math.random(1, 4)
	if rr == 1 then
		EntityLoad("mods/mould_n/data/entities/items/dragon_wand_reborn.xml", x, y)
	end

	local r = math.random(1,4)
	if r == 1 then
		EntityLoad("mods/mould_n/data/entities/items/rebirth/boss_dragon_tablet.xml", x, y)
	end

end