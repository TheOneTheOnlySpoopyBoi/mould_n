dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

AddGunAction( entity_id, "GRENADE" )
AddGunActionPermanent( entity_id, "POISON_TRAIL" )
AddGunActionPermanent( entity_id, "LIFETIME" )