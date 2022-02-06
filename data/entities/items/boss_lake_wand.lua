dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

AddGunAction( entity_id, "BURST_2" )
AddGunAction( entity_id, "TELEPORT_PROJECTILE" )

AddGunActionPermanent( entity_id, "WATER_TRAIL" )