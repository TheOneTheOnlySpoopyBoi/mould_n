dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

AddGunActionPermanent( entity_id, "MONKSTAFF_MELEE" ) --monkstaff melee passive
AddGunActionPermanent( entity_id, "BOUNCE_LASER" ) --monkstaff projectile