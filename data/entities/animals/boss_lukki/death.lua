dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id = GetUpdatedEntityID()
	local x, y = EntityGetTransform( entity_id )
	
	EntityLoad( "data/entities/items/pickup/heart_fullhp.xml",  x , y )

	EntityLoad( "data/entities/items/pickup/goldnugget_1000.xml",  x, y )
	EntityLoad( "data/entities/items/pickup/goldnugget_1000.xml",  x, y )
	EntityLoad( "data/entities/items/pickup/goldnugget_1000.xml",  x, y )
	EntityLoad( "data/entities/items/pickup/goldnugget_1000.xml",  x, y )
	EntityLoad( "data/entities/items/pickup/goldnugget_1000.xml",  x, y )

	EntityLoad("mods/mould_n/data/entities/items/toothy_spider_wand.xml", x, y+20)
	EntityLoad("mods/mould_n/data/entities/items/lukki_hunting_rifle.xml", x, y+20)

	local spelldrop = math.random(1, 9)

	if spelldrop == 1 then
		CreateItemActionEntity( "ALPHA", x, y )
	elseif spelldrop == 2 then
		CreateItemActionEntity( "OMEGA", x, y )
	elseif spelldrop == 3 then
		CreateItemActionEntity( "GAMMA", x, y )
	elseif spelldrop == 4 then
		CreateItemActionEntity( "MU", x, y )
	elseif spelldrop == 5 then
		CreateItemActionEntity( "RESET", x, y )
	elseif spelldrop == 6 then
		CreateItemActionEntity( "ZETA", x, y )
	elseif spelldrop == 7 then
		CreateItemActionEntity( "PHI", x, y )
	elseif spelldrop == 8 then
		CreateItemActionEntity( "TAU", x, y )
	elseif spelldrop == 9 then
		CreateItemActionEntity( "SIGMA", x, y )
	end
end