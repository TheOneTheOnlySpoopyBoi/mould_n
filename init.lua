ModLuaFileAppend( "data/scripts/gun/gun_actions.lua", "mods/mould_n/files/actions.lua" )

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/boss_pit/boss_pit.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/boss_pit_death_perk.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/boss_pit/boss_pit.xml", tostring(xml))

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/boss_limbs/boss_limbs.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/boss_limbs_death_wand.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/boss_limbs/boss_limbs.xml", tostring(xml))

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/lukki/lukki_dark.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/toothy_spider_death_wand.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/lukki/lukki_dark.xml", tostring(xml))

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/boss_dragon.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/boss_dragon_death_wand.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/boss_dragon.xml", tostring(xml))

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/shotgunner.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/hiisi_shotgun_death_wand.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/shotgunner.xml", tostring(xml))

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/firemage_weak.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/stendari_death_perk.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/firemage_weak.xml", tostring(xml))

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/sniper.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/hiisi_sniper_death.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/sniper.xml", tostring(xml))

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/scavenger_poison.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/hiisi_poison_death.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/scavenger_poison.xml", tostring(xml))

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/scavenger_smg.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/hiisi_gun_death.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/scavenger_smg.xml", tostring(xml))

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/scavenger_glue.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/hiisi_glue_death.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/scavenger_glue.xml", tostring(xml))

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/scavenger_heal.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/hiisi_heal_death.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/scavenger_heal.xml", tostring(xml))

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/boss_centipede/boss_centipede.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/boss_kolmi_death.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/boss_centipede/boss_centipede.xml", tostring(xml))

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/boss_robot/boss_robot.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/boss_mecha_kolmi_death.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/boss_robot/boss_robot.xml", tostring(xml))

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/maggot_tiny/maggot_tiny.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/boss_tiny_death.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/maggot_tiny/maggot_tiny.xml", tostring(xml))

function OnModInit()
	print("Mod - OnModInit()")
end

function OnModPostInit()
	print("Mod - OnModPostInit()")
end

function OnPlayerSpawned( player_entity )
	GamePrint("me when sirmole")

	if GameHasFlagRun("mysteryessence_spawned") == false then
		EntityLoad("data/entities/items/pickup/essence_mystery.xml" , 13059, -250)
		GameAddFlagRun("mysteryessence_spawned")
	end

	if GameHasFlagRun("mecha_fish_room_spawned") == false then
		EntityLoad("data/biome/mecha_fish_room.xml" , 0, 0)
		GameAddFlagRun("mecha_fish_room_spawned")
	end

	if GameHasFlagRun("mould_arch_1_generated") == false then
	--basic archaeology items
		dofile_once("mods/mould_n/files/scripts/arch/arch_1.lua")

		GameAddFlagRun("mould_arch_1_generated")
		print("arch_1")
	end

	if GameHasFlagRun("mould_spawned") == false then
		EntityLoad("data/entities/buildings/rebirth_altar/rebirth_altar.xml", -10523, 9472)

		EntityLoad("mods/mould_n/data/entities/animals/boss_lukki/boss_lukki.xml", -4300, 9830)
		EntityLoad("mods/mould_n/data/entities/animals/boss_fungus_worm/boss_fungus_worm.xml" , 3300, 6400)
		EntityLoad("mods/mould_n/data/entities/animals/boss_lake_spirit/boss_lake_spirit.xml" , -12446, -186)

		local pos_x = -1330
		local pos_y = -200
		local perk_id =	perk_spawn(pos_x, pos_y, "GLASS_CANNON", x, y)
	
		if( perk_id ~= nil ) then
			EntityAddComponent( perk_id, "VariableStorageComponent", 
			{ 
				name = "perk_dont_remove_others",
				value_bool = "1",
			} )
		end

		GameAddFlagRun("mould_spawned")
	end

end

function OnWorldPostUpdate()
	if GameHasFlagRun("mysteryessence_spawned") == false then
		EntityLoad("data/entities/items/pickup/essence_mystery.xml" , 13059, -250)
		GameAddFlagRun("mysteryessence_spawned")
	end

	if GameHasFlagRun("mecha_fish_room_spawned") == false then
		EntityLoad("data/biome/mecha_fish_room.xml" , 0, 0)
		GameAddFlagRun("mecha_fish_room_spawned")
	end

	if GameHasFlagRun("mould_arch_1_generated") == false then
	--basic archaeology items
		dofile_once("mods/mould_n/files/scripts/arch/arch_1.lua")

		GameAddFlagRun("mould_arch_1_generated")
		print("arch_1")
	end

	if GameHasFlagRun("mould_spawned") == false then
		EntityLoad("data/entities/buildings/rebirth_altar/rebirth_altar.xml", -10523, 9472)

		EntityLoad("mods/mould_n/data/entities/animals/boss_lukki/boss_lukki.xml", -4300, 9830)
		EntityLoad("mods/mould_n/data/entities/animals/boss_fungus_worm/boss_fungus_worm.xml" , 3300, 6400)
		EntityLoad("mods/mould_n/data/entities/animals/boss_lake_spirit/boss_lake_spirit.xml" , -12446, -186)

		local pos_x = -1330
		local pos_y = -200
		local perk_id =	perk_spawn(pos_x, pos_y, "GLASS_CANNON", x, y)
	
		if( perk_id ~= nil ) then
			EntityAddComponent( perk_id, "VariableStorageComponent", 
			{ 
				name = "perk_dont_remove_others",
				value_bool = "1",
			} )
		end

		GameAddFlagRun("mould_spawned")
	end
end

function OnPlayerDied()
	print("dead")
end