dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

AddGunAction( entity_id, "HIISI_GUN" )
AddGunActionPermanent( entity_id, "LIFETIME" )
AddGunActionPermanent( entity_id, "SPEED" )