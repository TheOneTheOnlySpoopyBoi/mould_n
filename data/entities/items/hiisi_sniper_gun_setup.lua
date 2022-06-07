dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

AddGunAction( entity_id, "HIISI_SNIPER" )
--AddGunAction( entity_id, "HIISI_SNIPER_AIM" )
AddGunActionPermanent( entity_id, "LIFETIME" )
AddGunActionPermanent( entity_id, "SPEED" )