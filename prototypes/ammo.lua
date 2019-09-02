data:extend({

{
type = "ammo",
name = tb_defines.names.tsar_bomba_ammo,
icon = "__base__/graphics/icons/artillery-shell.png",
tint = {r=0.5, g=0.5, b=0, a=1},
icon_size = 32,
ammo_type =
{
	  category = tb_defines.names.ammo_category,
	  --category = "artillery-shell",
	  target_type = "position",
	  action =
	{
		type = "direct",
		action_delivery =
	{
		type = "artillery",
		projectile = tb_defines.names.tsar_projectile,
		starting_speed = 1,
		direction_deviation = 0,
		range_deviation = 0,
		source_effects =
		{
			type = "create-explosion",
			entity_name = "artillery-cannon-muzzle-flash"
		}
	}
	}
},
subgroup = "ammo",
order = "d[explosive-cannon-shell]-d[artillery]",
stack_size = 1
}

})
