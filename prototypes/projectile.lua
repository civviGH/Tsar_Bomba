data:extend({

{
  type = "artillery-projectile",
  name = tb_defines.names.tsar_projectile,
  flags = {"not-on-map"},
  reveal_map = true,
  map_color = {r=1, g=1, b=0},
  picture =
  {
    filename = "__base__/graphics/entity/artillery-projectile/hr-shell.png",
    width = 64,
    height = 64,
    scale = 0.5
  },
  shadow =
  {
    filename = "__base__/graphics/entity/artillery-projectile/hr-shell-shadow.png",
    width = 64,
    height = 64,
    scale = 0.5
  },
  chart_picture =
  {
    filename = "__base__/graphics/entity/artillery-projectile/artillery-shoot-map-visualization.png",
    flags = { "icon" },
    frame_count = 1,
    width = 64,
    height = 64,
    priority = "high",
    scale = 0.25
  },
  action =
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "nested-result",
          action =
          {
            type = "area",
            radius = 40.0,
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "damage",
                  damage = {amount = 500 , type = "physical"}
                },
                {
                  type = "damage",
                  damage = {amount = 500 , type = "explosion"}
                }
              }
            }
          }
        },
        {
          type = "create-trivial-smoke",
          smoke_name = "artillery-smoke",
          initial_height = 0,
          speed_from_center = 0.05,
          speed_from_center_deviation = 0.005,
          offset_deviation = {{-4, -4}, {4, 4}},
          max_radius = 3.5,
          repeat_count = 4 * 4 * 15
        },
        {
          type = "create-entity",
          entity_name = tb_defines.names.tsar_bomba_explosion
        },
        {
          type = "show-explosion-on-chart",
          scale = 8/32
        },
        {
          type = "destroy-cliffs",
          radius = 40.0,
          explosion = "explosion"
        }
      }
    }
  },
  final_action =
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "create-entity",
          entity_name = "small-scorchmark",
          check_buildability = true
        }
      }
    }
  },
  height_from_ground = 280 / 64
}

})
