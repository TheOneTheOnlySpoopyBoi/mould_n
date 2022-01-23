dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local x, y = EntityGetTransform( GetUpdatedEntityID() )

	local r = math.random(1,11) 
	if r == 2 then 
		EntityLoad("mods/mould_n/data/entities/items/toothy_spider_wand.xml", x, y+20)
	end

	local r = math.random(1,20) 
	if r == 2 then 
		local perk_id = perk_spawn(pos_x, pos_y, "ATTACK_FOOT", x, y+25)	
	
		if( perk_id ~= nil ) then
		EntityAddComponent( perk_id, "VariableStorageComponent", 
		{ 
			name = "perk_dont_remove_others",
			value_bool = "1",
		} )
		end
	end

	local r = math.random(1,30) 
	if r == 2 then 
		local perk_id = perk_spawn(pos_x, pos_y, "LUKKI_MINION", x, y+25)	
	
		if( perk_id ~= nil ) then
		EntityAddComponent( perk_id, "VariableStorageComponent", 
		{ 
			name = "perk_dont_remove_others",
			value_bool = "1",
		} )
		end
	end



end