dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

AddGunActionPermanent( entity_id, "SINEWAVE" )
AddGunActionPermanent( entity_id, "HOMING_SHORT" )
AddGunActionPermanent( entity_id, "COLOUR_ORANGE" )
AddGunActionPermanent( entity_id, "RING_NEWSUN" )