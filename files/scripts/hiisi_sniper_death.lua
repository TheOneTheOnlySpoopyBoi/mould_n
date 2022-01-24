dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local x, y = EntityGetTransform( GetUpdatedEntityID() )

	local r = math.random(1,3) 
	if r == 2 then 
		EntityLoad("mods/mould_n/data/entities/items/hiisi_sniper_gun.xml", x, y-20)
	end
end