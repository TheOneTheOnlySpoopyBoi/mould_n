dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local x, y = EntityGetTransform( GetUpdatedEntityID() )

	

	local r = math.random(1,20)
	if r == 2 then 
		EntityLoad("mods/mould_n/data/entities/items/flammenwerfer.xml", x, y+20)
	else
		EntityLoad("mods/mould_n/data/entities/items/dragon_wand.xml", x, y+20)
	end

	EntityLoad("mods/mould_n/data/entities/items/rebirth/boss_dragon_tablet.xml", x, y)

	GamePrintImportant("THE SANDS HAVE SHIFTED", "Maybe you should dig...")
	dofile_once("mods/mould_n/files/scripts/arch/arch_2.lua")
	GameAddFlagRun("mould_arch_2_generated")
	print("arch_2")
end