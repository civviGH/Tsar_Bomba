tb_turret_top = table.deepcopy(data.raw.gun["artillery-wagon-cannon"])
tb_turret_top.attack_parameters.ammo_category = tb_defines.names.ammo_category
tb_turret_top.name = tb_defines.names.turret_entity_top

tb_turret_entity = table.deepcopy(data.raw["artillery-turret"]["artillery-turret"])
tb_turret_entity.minable.result = tb_defines.names.turret
tb_turret_entity.gun = tb_defines.names.turret_entity_top
tb_turret_entity.name = tb_defines.names.turret_entity

data:extend({

{
  type = "item",
  name = tb_defines.names.turret,
  icon = "__base__/graphics/icons/artillery-turret.png",
  icon_size = 32,
  subgroup = "defensive-structure",
  order = "b[turret]-d[artillery-turret]",
  place_result = tb_defines.names.turret_entity,
  stack_size = 10
},tb_turret_entity, tb_turret_top

})
