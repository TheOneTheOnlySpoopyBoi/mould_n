dofile_once("data/scripts/lib/utilities.lua")

function damage_received( damage, desc, entity_who_caused, is_fatal )
	local entity_id = GetUpdatedEntityID()
	local x, y, a = EntityGetTransform( entity_id )
	damage = 1

	y = y + 48
	

	SetRandomSeed( GameGetFrameNum(), entity_id )
	local angle = Random( 1, 100 ) * 0.01 * math.pi * 2
	
	if ( entity_who_caused ~= nil ) and ( entity_who_caused ~= NULL_ENTITY ) then
		local px, py = EntityGetTransform( entity_who_caused )
		angle = get_direction( px, py, x, y )
	end
		
	local vx = math.cos( angle ) * 80
	local vy = 0 - math.sin( angle ) * 80
	
	local doshoot = math.Random(1, 3)
	if doshoot == 2 then
		local shootwhat = math.Random(1, 3)

		if shootwhat == 1 then
			shoot_projectile( entity_id, "data/entities/animals/boss_robot/rocket_roll.xml", x, y, vx, vy )
		elseif shootwhat == 2 then
			shoot_projectile( entity_id, "data/entities/animals/boss_robot/rocket_roll.xml", x, y, vx, vy )
		elseif shootwhat == 3 then
			--summon drone
			shoot_projectile( entity_id, "data/entities/animals/boss_space_station/drone.xml", x, y, vx, vy )
		end
	end

	local c = EntityGetComponent( entity_id, "SpriteComponent", "health_bar" )
	if ( c ~= nil ) then
		for i,v in ipairs( c ) do
			ComponentSetValue2( v, "visible", true )
		end
	end

end