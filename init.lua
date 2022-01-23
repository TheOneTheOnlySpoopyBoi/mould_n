--[[
No need to mod any of this
]]--

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
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/boss_fish/fish_giga.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/boss_leviathan_death_wand.lua"
		>
	</LuaComponent>
]]))

ModTextFileSetContent("data/entities/animals/firemage_weak.xml", tostring(xml))

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/firemage_weak.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/stendari_death_perk.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/firemage_weak.xml", tostring(xml))

ModTextFileSetContent("data/entities/animals/firemage_weak.xml", tostring(xml))

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/firemage.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/stendari_death_perk.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/firemage.xml", tostring(xml))


function OnModInit()
	print("Mod - OnModInit()")
end

function OnModPostInit()
	print("Mod - OnModPostInit()")
end

function OnPlayerSpawned( player_entity )
	GamePrint("Custom Wand Active")
end

ModLuaFileAppend( "data/scripts/gun/gun_actions.lua", "mods/mould_n/files/actions.lua" )
print("me when sirmole")

--[[
=======
Credits
=======
Template Bodged together by Eman On
Canniblized "Sniper Start" by Zickery#2218! to understand some code
Thanks to u/FortyNineMilkshakes for pointing me in the right direction on reddit
]]--