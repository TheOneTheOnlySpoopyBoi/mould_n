dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

AddGunAction( entity_id, "LUMINOUS_DRILL" )
AddGunAction( entity_id, "LUMINOUS_DRILL" )
AddGunAction( entity_id, "LUMINOUS_DRILL" )

AddGunActionPermanent( entity_id, "COLOUR_YELLOW" )