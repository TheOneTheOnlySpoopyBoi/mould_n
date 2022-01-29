dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id = GetUpdatedEntityID()
	local x, y = EntityGetTransform( entity_id )
	
	ConvertMaterialEverywhere( CellFactory_GetType( "water" ), CellFactory_GetType( "water" ) )
	EntityLoad( "data/entities/items/pickup/heart_fullhp.xml",  -10660, 9480 )
	EntityLoad( "data/entities/items/pickup/chest_random_super.xml",  -10390, 9480 )
	
	--GameAddFlagRun( "miniboss_fish" )
	--AddFlagPersistent( "miniboss_fish" )
end