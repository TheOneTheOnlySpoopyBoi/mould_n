dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

AddGunActionPermanent( entity_id, "BURNING_GAZE" )
AddGunActionPermanent( entity_id, "LIFETIME" )
AddGunActionPermanent( entity_id, "HOMING" )