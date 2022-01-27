dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

AddGunAction( entity_id, "HOMING_SHOOTER" )
AddGunAction( entity_id, "BURST_3" )
AddGunAction( entity_id, "HEAL_BULLET" )
AddGunAction( entity_id, "HEAL_BULLET" )
AddGunAction( entity_id, "HEAL_BULLET" )

AddGunActionPermanent( entity_id, "COLOUR_YELLOW" )