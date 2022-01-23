dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local x, y = EntityGetTransform( GetUpdatedEntityID() )

	local perk_id = perk_spawn(pos_x, pos_y, "EDIT_WANDS_EVERYWHERE", x, y+25)	
	
	if( perk_id ~= nil ) then
		EntityAddComponent( perk_id, "VariableStorageComponent", 
		{ 
			name = "perk_dont_remove_others",
			value_bool = "1",
		} )
	end
end