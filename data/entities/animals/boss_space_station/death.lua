dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id = GetUpdatedEntityID()
	local x, y = EntityGetTransform( entity_id )
	
	EntityLoad( "data/entities/items/pickup/chest_random_super.xml",  x, y )

	EntityLoad( "data/entities/items/space_station_weapon.xml",  x, y-40 )	

	local perk_id = perk_spawn(pos_x, pos_y, "PROTECTION_FIRE", x-40, y)	
	
	if( perk_id ~= nil ) then
		EntityAddComponent( perk_id, "VariableStorageComponent", 
		{ 
			name = "perk_dont_remove_others",
			value_bool = "1",
		} )
	end

	local perk_id = perk_spawn(pos_x, pos_y, "PROTECTION_EXPLOSION", x+40, y)	
	
	if( perk_id ~= nil ) then
		EntityAddComponent( perk_id, "VariableStorageComponent", 
		{ 
			name = "perk_dont_remove_others",
			value_bool = "1",
		} )
	end

end