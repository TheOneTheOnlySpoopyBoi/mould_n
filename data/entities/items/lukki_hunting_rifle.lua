dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

AddGunAction( entity_id, "TENTACLE" )

AddGunActionPermanent( entity_id, "FREEZE" )
AddGunActionPermanent( entity_id, "TENTACLE_RAY" )
AddGunActionPermanent( entity_id, "SPEED" )