dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id = GetUpdatedEntityID()
	local x, y = EntityGetTransform( entity_id )

	EntityLoad( "data/entities/items/pickup/goldnugget_1000.xml",  x, y )
	EntityLoad( "data/entities/items/pickup/goldnugget_1000.xml",  x, y )
	EntityLoad( "data/entities/items/pickup/goldnugget_1000.xml",  x, y )
	EntityLoad( "data/entities/items/pickup/goldnugget_1000.xml",  x, y )
	EntityLoad( "data/entities/items/pickup/goldnugget_1000.xml",  x, y )
	
	EntityLoad("mods/mould_n/data/entities/items/excal_reborn.xml", x, y-20)

	local r = math.random(1,3)
	if r == 1 then
		EntityLoad("mods/mould_n/data/entities/items/rebirth/boss_lady_tablet.xml", x, y)
	end
end