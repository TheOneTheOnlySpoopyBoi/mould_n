dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local x, y = EntityGetTransform( GetUpdatedEntityID() )

	GamePrintImportant("THE SANDS HAVE SHIFTED", "Maybe you should dig...")
	dofile_once("mods/mould_n/files/scripts/arch/arch_4.lua")
	GameAddFlagRun("mould_arch_4_generated")
	print("arch_4")
end