dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

AddGunActionPermanent( entity_id, "SINEWAVE" )
AddGunActionPermanent( entity_id, "FREEZE" )
AddGunActionPermanent( entity_id, "HOMING" )
AddGunActionPermanent( entity_id, "COLOUR_GREEN" )
AddGunActionPermanent( entity_id, "RING_BALANCE" )