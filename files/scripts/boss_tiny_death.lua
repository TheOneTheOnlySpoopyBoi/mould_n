dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local x, y = EntityGetTransform( GetUpdatedEntityID() )

	EntityLoad("mods/mould_n/data/entities/items/tiny_wand.xml", x, y+20)

	ConvertMaterialEverywhere( CellFactory_GetType( "lava" ), CellFactory_GetType( "darkness" ) )

	GamePrintImportant("THE SANDS HAVE SHIFTED", "Maybe you should dig...")
	dofile_once("mods/mould_n/files/scripts/arch/arch_5.lua")
	GameAddFlagRun("mould_arch_5_generated")
	print("arch_5")
end