dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

AddGunActionPermanent( entity_id, "DUPLICATE" )

AddGunAction( entity_id, "HOMING_SHOOTER" )
AddGunAction( entity_id, "DIVIDE_10" )
AddGunAction( entity_id, "BURST_X" )
AddGunAction( entity_id, "BLACK_HOLE_GIGA" )
AddGunAction( entity_id, "REGENERATION_FIELD" )