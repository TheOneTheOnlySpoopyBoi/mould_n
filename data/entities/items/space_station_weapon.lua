dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

AddGunAction( entity_id, "DIVIDE_5" )
AddGunAction( entity_id, "LASER_EMITTER_WIDER" )
AddGunAction( entity_id, "LASER_EMITTER" )
