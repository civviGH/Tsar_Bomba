data:extend({

{
  type = "recipe",
  name = tb_defines.names.tsar_bomba_ammo_recipe,
  enabled = true,
  energy_required = 15,
  ingredients =
  {
    {"explosive-cannon-shell", 4},
    {"radar", 1},
    {"explosives", 8}
  },
  result = tb_defines.names.tsar_bomba_ammo
},
{
  type = "recipe",
  name = tb_defines.names.turret,
  enabled = true,
  energy_required = 40,
  ingredients =
  {
    {"steel-plate", 60},
    {"concrete", 60},
    {"iron-gear-wheel", 40},
    {"advanced-circuit", 20}
  },
  result = tb_defines.names.turret
}

})
