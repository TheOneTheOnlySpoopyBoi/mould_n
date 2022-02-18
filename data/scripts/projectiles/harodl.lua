dofile_once("data/scripts/utilities.lua")

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )

local mat = "acid"

GamePrintImportant("HAIL HARODL", "")

ConvertMaterialEverywhere( CellFactory_GetType( "rock_static" ), CellFactory_GetType( mat ) )
ConvertMaterialEverywhere( CellFactory_GetType( "water" ), CellFactory_GetType( mat ) )
ConvertMaterialEverywhere( CellFactory_GetType( "sand_static" ), CellFactory_GetType( mat ) )
ConvertMaterialEverywhere( CellFactory_GetType( "snowrock_static" ), CellFactory_GetType( mat ) )
ConvertMaterialEverywhere( CellFactory_GetType( "snow_static" ), CellFactory_GetType( mat ) )
ConvertMaterialEverywhere( CellFactory_GetType( "templebrick_static" ), CellFactory_GetType( mat ) )
ConvertMaterialEverywhere( CellFactory_GetType( "steel_static" ), CellFactory_GetType( mat ) )
ConvertMaterialEverywhere( CellFactory_GetType( "lavarock_static" ), CellFactory_GetType( mat ) )
ConvertMaterialEverywhere( CellFactory_GetType( "sand_static_rainforest" ), CellFactory_GetType( mat ) )
ConvertMaterialEverywhere( CellFactory_GetType( "cloud" ), CellFactory_GetType( mat ) )
ConvertMaterialEverywhere( CellFactory_GetType( "rock_static_grey" ), CellFactory_GetType( mat ) )
ConvertMaterialEverywhere( CellFactory_GetType( "templebrick_noedge_static" ), CellFactory_GetType( mat ) )
ConvertMaterialEverywhere( CellFactory_GetType( "wood_static" ), CellFactory_GetType( mat ) )
ConvertMaterialEverywhere( CellFactory_GetType( "wood_static_vertical" ), CellFactory_GetType( mat ) )