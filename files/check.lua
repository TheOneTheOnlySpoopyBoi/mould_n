local nxml = dofile_once("mods/mould_n/lib/nxml.lua")

if ModIsEnabled("mould_theotherside") then

	local content = ModTextFileGetContent("data/entities/player.xml")
	local xml = nxml.parse(content)
	xml:add_children(nxml.parse_many[[
		<Entity name="inventory_quick">

		<Entity><Base file="data/entities/items/hiisi_shotgun.xml" /></Entity>
		<Entity><Base file="data/entities/items/hiisi_gun.xml" /></Entity>
		<Entity><Base file="data/entities/items/hiisi_sniper_gun.xml" /></Entity>

		</Entity>
	]])
	ModTextFileSetContent("data/entities/player.xml", tostring(xml))

    local content = ModTextFileGetContent("data/entities/player_base.xml")
	local xml = nxml.parse(content)
	xml:add_children(nxml.parse_many[[
        <SpriteComponent 
        _tags="character,lukki_disable" 
        alpha="1" 
        image_file="data/enemies_gfx/player_theotherside.xml" 
        next_rect_animation="" 
        rect_animation="walk" 
        z_index="0.6"
      ></SpriteComponent>
      
	]])
	ModTextFileSetContent("data/entities/player_base.xml", tostring(xml))

    local player = EntityGetWithTag("player_unit")
    local path = "data/enemies_gfx/player_theotherside.xml"

    local comp = EntityGetFirstComponent( player, "SpriteComponent", "" )
    ComponentSetValue2( comp, image_file, path )
    

else

	local content = ModTextFileGetContent("data/entities/player.xml")
	local xml = nxml.parse(content)
	xml:add_children(nxml.parse_many[[
		<Entity name="inventory_quick">

		<Entity><Base file="data/entities/items/start_wand.xml" /></Entity>
		<Entity><Base file="data/entities/items/mina_pearl.xml" /></Entity>
		<Entity><Base file="data/entities/items/start_wand_digging.xml" /></Entity>

		<Entity><Base file="data/entities/items/pickup/potion_water.xml" /></Entity>
		</Entity>

        <HotspotComponent
        _tags="cape_root"
        sprite_hotspot_name="cape" >
        </HotspotComponent>
  
        <Entity name="cape">  
            <Base file="data/entities/verlet_chains/cape/cape.xml">
            </Base>  
        </Entity>
	]])
	ModTextFileSetContent("data/entities/player.xml", tostring(xml))

    local content = ModTextFileGetContent("data/entities/player_base.xml")
	local xml = nxml.parse(content)
	xml:add_children(nxml.parse_many[[

	]])
	ModTextFileSetContent("data/entities/player_base.xml", tostring(xml))

end