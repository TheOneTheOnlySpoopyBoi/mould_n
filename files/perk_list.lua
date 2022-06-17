local to_insert = {
    {
		id = "MONK_HAND",
		ui_name = "Monk Hand",
		ui_description = "Deny the projectiles of your enemies.",
		ui_icon = "data/ui_gfx/perk_icons/monk_hand.png",
		perk_icon = "data/items_gfx/perks/monk_hand.png",
		usable_by_enemies = true,
		stackable = STACKABLE_YES,
		func = function( entity_perk_item, entity_who_picked, item_name )
			local x,y = EntityGetTransform( entity_who_picked )

			local child_id = EntityLoad( "data/entities/misc/perks/monk_hand.xml", x, y )

            --[[local child_id = EntityLoad( "data/entities/misc/monk_arm_fx.xml", x, y )
            local child_id = EntityLoad( "data/entities/misc/monk_arm_fx.xml", x, y )
            local child_id = EntityLoad( "data/entities/misc/monk_arm_fx.xml", x, y )
            local child_id = EntityLoad( "data/entities/misc/monk_arm_fx.xml", x, y )]]--

			EntityAddTag( child_id, "perk_entity" )
			EntityAddChild( entity_who_picked, child_id )
			
			perk_pickup_event("MONKHAND")
			
			if ( GameHasFlagRun( "player_status_monk_hand" ) == false ) then
				GameAddFlagRun( "player_status_monk_hand" )
				add_ghostness_level(entity_who_picked)
			end
		end,
		func_remove = function( entity_who_picked )
			reset_perk_pickup_event("MONKHAND")
			GameRemoveFlagRun( "player_status_monk_hand" )
		end,
	}
}

for k, v in ipairs(to_insert) do
    table.insert(perk_list, v)
end