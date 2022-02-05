dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id = GetUpdatedEntityID()
	local x, y = EntityGetTransform( entity_id )

	EntityLoad( "data/entities/items/pickup/goldnugget_1000.xml",  x, y )
	EntityLoad( "data/entities/items/pickup/goldnugget_1000.xml",  x, y )
	EntityLoad( "data/entities/items/pickup/goldnugget_1000.xml",  x, y )
	
	EntityLoad("mods/mould_n/data/entities/items/boss_lake_wand.xml", x, y-20)
	EntityLoad("mods/mould_n/data/entities/items/boss_lake_sword.xml", x, y-20)

	EntityLoad("mods/mould_n/data/entities/items/rebirth/boss_lady_tablet.xml", x, y)
end