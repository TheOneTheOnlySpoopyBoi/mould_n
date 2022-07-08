ModLuaFileAppend( "data/scripts/gun/gun_actions.lua", "mods/mould_n/files/actions.lua" )
ModLuaFileAppend( "data/scripts/status_effects/status_list.lua", "mods/mould_n/files/status_effects.lua" )
ModLuaFileAppend( "data/scripts/perks/perk_list.lua", "mods/mould_n/files/perk_list.lua" )
ModMaterialsFileAdd("mods/mould_n/files/materials.xml")

if ModIsEnabled("raksa") then
  ModLuaFileAppend(
    "mods/raksa/files/scripts/lists/entity_categories.lua",
    "data/scripts/conjurer_mod/mould_list.lua"
  )
end

ModMagicNumbersFileAdd( "mods/mould_n/files/magic_numbers.xml" ) 
--BiomeMapLoadImage( 0, 0, "mods/mould_n/files/maps/m.png" )

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")

local content = ModTextFileGetContent("data/biome/_biomes_all.xml")
local xml = nxml.parse(content)
xml:add_children(nxml.parse_many[[
	<Biome height_index="0" color="ff528900" biome_filename="data/biome/boss_lukki_room.xml" />
	<Biome height_index="0" color="ff1d3f24" biome_filename="data/biome/boss_fungus_worm_room.xml" />
	<Biome height_index="0" color="ff2d4def" biome_filename="data/biome/boss_lady_room.xml" />

	<Biome height_index="0" color="ff353fac" biome_filename="data/biome/mecha_fish_room.xml" />
	<Biome height_index="0" color="ff353fca" biome_filename="data/biome/mecha_fish_room2.xml" />
	<Biome height_index="0" color="ff8a9f82" biome_filename="data/biome/harodl_room.xml" />
	<Biome height_index="0" color="ff85d1a8" biome_filename="data/biome/subnoitica_room.xml" />
	<Biome height_index="0" color="ff41a06e" biome_filename="data/biome/reef_shrine.xml" />
	<Biome height_index="0" color="ff1789b2" biome_filename="data/biome/essence_mystery.xml" />

	<Biome height_index="0" color="ff357442" biome_filename="data/biome/rainforest_decay.xml" />
	<Biome height_index="0" color="ff007f7f" biome_filename="data/biome/cursed_sandcave.xml" />
	<Biome height_index="0" color="ff4bb87f" biome_filename="data/biome/reef.xml" />
	<Biome height_index="0" color="ff082b70" biome_filename="data/biome/mine_field.xml" />
	<Biome height_index="0" color="ff75b794" biome_filename="data/biome/prawn_cave.xml" />
	<Biome height_index="0" color="ff6dd931" biome_filename="data/biome/monkcity.xml" />
	<Biome height_index="0" color="ff112fd6" biome_filename="data/biome/trench.xml" />
]])
ModTextFileSetContent("data/biome/_biomes_all.xml", tostring(xml))

dofile_once("mods/mould_n/files/check.lua")

if ModIsEnabled("mould_theotherside") then

else
	function Moulding()
		dofile_once("mods/mould_n/files/spawn.lua")
	end
end

local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/boss_pit/boss_pit.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/boss_pit_death_perk.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/boss_pit/boss_pit.xml", tostring(xml))
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/boss_limbs/boss_limbs.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/boss_limbs_death_wand.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/boss_limbs/boss_limbs.xml", tostring(xml))
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/lukki/lukki_dark.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/toothy_spider_death_wand.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/lukki/lukki_dark.xml", tostring(xml))
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/boss_dragon.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/boss_dragon_death_wand.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/boss_dragon.xml", tostring(xml))
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/shotgunner.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/hiisi_shotgun_death_wand.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/shotgunner.xml", tostring(xml))
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/firemage_weak.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/stendari_death_perk.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/firemage_weak.xml", tostring(xml))
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/sniper.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/hiisi_sniper_death.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/sniper.xml", tostring(xml))
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/scavenger_poison.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/hiisi_poison_death.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/scavenger_poison.xml", tostring(xml))
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/scavenger_smg.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/hiisi_gun_death.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/scavenger_smg.xml", tostring(xml))
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/scavenger_glue.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/hiisi_glue_death.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/scavenger_glue.xml", tostring(xml))
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/scavenger_heal.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/hiisi_heal_death.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/scavenger_heal.xml", tostring(xml))
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/boss_centipede/boss_centipede.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/boss_kolmi_death.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/boss_centipede/boss_centipede.xml", tostring(xml))
local xml = nxml.parse(ModTextFileGetContent("data/entities/animals/boss_robot/boss_robot.xml"))
xml:add_child(nxml.parse([[
	<LuaComponent
		script_death="mods/mould_n/files/scripts/boss_mecha_kolmi_death.lua"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/boss_robot/boss_robot.xml", tostring(xml))
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



GamePrint("Mould")