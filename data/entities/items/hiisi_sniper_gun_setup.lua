dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

AddGunActionPermanent( entity_id, "BULLET" )
AddGunActionPermanent( entity_id, "LIFETIME" )
AddGunActionPermanent( entity_id, "DAMAGE" )
AddGunActionPermanent( entity_id, "SPEED" )
AddGunActionPermanent( entity_id, "SPEED" )