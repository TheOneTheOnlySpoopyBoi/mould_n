ModLuaFileAppend( "data/scripts/gun/gun_actions.lua", "mods/mould_n/files/actions.lua" )
ModLuaFileAppend( "data/scripts/status_effects/status_list.lua", "mods/mould_n/files/status_effects.lua" )
ModMaterialsFileAdd("mods/mould_n/files/materials.xml")

ModMagicNumbersFileAdd( "mods/mould_n/files/magic_numbers.xml" ) 
--BiomeMapLoadImage( 0, 0, "mods/mould_n/files/biome_map.png" )

--[[
MAP NAMES

1 - normal biome map thingy
2 - lake on both sides maybe idk
]]

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
	Moulding()
end

function OnWorldPostUpdate()
	Moulding()
end

function OnPlayerDied()
	print("dead")
end

function Moulding()
	dofile_once("mods/mould_n/files/spawn.lua")
end

GamePrint("Mould")