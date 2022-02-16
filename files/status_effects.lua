local to_insert = {
	{
		id="WATERBREATHING",
		ui_name="Water Breathing",
		ui_description="am fish.",
		ui_icon="data/ui_gfx/status_indicators/waterbreathing.png",
		effect_entity="data/entities/misc/effect_breath_underwater.xml",
	},
}

for k, v in ipairs(to_insert) do
    table.insert(status_effects, v)
end