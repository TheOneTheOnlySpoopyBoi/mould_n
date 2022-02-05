dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id = GetUpdatedEntityID()
	local x, y = EntityGetTransform( entity_id )
	
	ConvertMaterialEverywhere( CellFactory_GetType( "water" ), CellFactory_GetType( "water" ) )
	EntityLoad( "data/entities/items/pickup/heart_fullhp.xml",  -10660, 9480 )
	EntityLoad( "data/entities/items/pickup/chest_random_super.xml",  -10390, 9480 )

	EntityLoad("mods/mould_n/data/entities/items/fishhook.xml", x, y)

	local r = math.random(1,3)
	if r == 1 then
		EntityLoad("mods/mould_n/data/entities/items/rebirth/boss_fish_tablet.xml", x, y)
	end
	
	--GameAddFlagRun( "miniboss_fish" )
	--AddFlagPersistent( "miniboss_fish" )
end