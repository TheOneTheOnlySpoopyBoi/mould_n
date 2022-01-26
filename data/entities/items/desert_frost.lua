dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

AddGunAction( entity_id, "FREEZING_GAZE" )

AddGunActionPermanent( entity_id, "COLOUR_YELLOW" )
AddGunActionPermanent( entity_id, "CRITICAL_HIT" )