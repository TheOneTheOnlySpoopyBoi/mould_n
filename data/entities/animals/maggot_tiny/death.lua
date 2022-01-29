dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	-- kill self
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )

	-- do some kind of an effect? throw some particles into the air?
	EntityLoad( "data/entities/items/pickup/heart_better.xml", pos_x - 24, pos_y )
	EntityLoad( "data/entities/items/pickup/heart_fullhp.xml", pos_x + 24, pos_y )
	EntityLoad( "data/entities/items/wand_unshuffle_06.xml", pos_x - 16, pos_y )
	EntityLoad( "data/entities/items/wand_unshuffle_10.xml", pos_x + 16, pos_y )
	GamePrintImportant("THE SANDS ARE SHIMMERING", "Prosperity awaits...")
	dofile_once("mods/mould_n/files/scripts/arch/arch_5.lua")
	GameAddFlagRun("mould_arch_5_generated")
	print("arch_5")
	EntityLoad("mods/mould_n/data/entities/items/tiny_wand.xml", x, y+20)
	
	GameAddFlagRun( "miniboss_maggot" )
	AddFlagPersistent( "miniboss_maggot" )
	AddFlagPersistent( "card_unlocked_maggot" )
	
	--StatsLogPlayerKill( entity_id )

	--EntityKill( entity_id )
end