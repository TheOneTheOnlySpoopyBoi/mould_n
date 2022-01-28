dofile("data/scripts/lib/utilities.lua")
dofile("data/scripts/gun/procedural/gun_action_utils.lua")

local entity_id = GetUpdatedEntityID()

AddGunActionPermanent( entity_id, "COLOUR_GREEN" )
AddGunActionPermanent( entity_id, "NOLLA" )
AddGunActionPermanent( entity_id, "DISC_BULLET_BIG" )
AddGunAction( entity_id, "CHAINSAW" )