require("defines")

data:extend {
	{
		-- Tsar Bomba power multiplikator in comparison to the vanilla atomic rocket.
		type = "int-setting",
		name = tb_defines.names.settings.power_multi,
		setting_type = "startup",
		default_value = 17,
		minimum_value = 1,
		maximum_value = 50,
		order = "aaa"
	}
}
