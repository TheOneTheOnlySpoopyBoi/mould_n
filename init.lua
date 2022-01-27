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

	if GameHasFlagRun("mould_cave_thing") == false then
	EntityLoad("data/entities/animals/dark_cave_thing/dark_cave_thing.xml" , -1748, 740)
	GameAddFlagRun("mould_cave_thing")
	print("cave_thing")
	end

	if GameHasFlagRun("mould_arch_1_generated") == false then
	--basic archaeology items
	dofile_once("mods/mould_n/files/scripts/arch/arch_1.lua")

	GameAddFlagRun("mould_arch_1_generated")
	print("arch_1")
	end
end

function OnPlayerDied()
	GamePrintImportant("SKILL ISSUE", "")
end

--[[
	extol best
]]