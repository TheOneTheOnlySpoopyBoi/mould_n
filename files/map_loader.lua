local w, h = 70, 48
BiomeMapSetSize(w, h + 10)

--[[
mods

m mould mould_n
nv noitavania noitavania
fb flesh biome flesh_biome


]]--

--nv
if ModIsEnabled( "noitavania" ) and not ModIsEnabled( "flesh_biome" ) then

    BiomeMapLoadImage( 0, 0, "mods/mould_n/files/maps/m_nv.png" )

--fb
elseif ModIsEnabled( "flesh_biome" ) and not ModIsEnabled ( "noitavania" ) then

    BiomeMapLoadImage( 0, 0, "mods/mould_n/files/maps/m_fb.png" )

--nv fb
elseif ModIsEnabled( "noitavania" ) and ModIsEnabled ( "flesh_biome" ) then

    BiomeMapLoadImage( 0, 0, "mods/mould_n/files/maps/m_nv_fb.png" )

--m
else

    BiomeMapLoadImage( 0, 0, "mods/mould_n/files/maps/m.png" )

end