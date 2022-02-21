dofile_once("data/scripts/utilities.lua")

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )

local mat = "seam"

GamePrintImportant("The world cries...", "What have you done?")

local nxml = dofile_once("mods/mould_n/lib/nxml.lua")
local content = ModTextFileGetContent("data/materials.xml")
local xml = nxml.parse(content)
for elem in xml:each_child() do
    if elem.attr.name == "rock_box2d_hard" then
        return
    end
    if elem.attr.name == "templebrick_static" then
        return
    end
    ConvertMaterialEverywhere( CellFactory_GetType( elem.attr.name ), CellFactory_GetType( mat ) )
end