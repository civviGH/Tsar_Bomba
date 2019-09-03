data:extend({

{
  type = "explosion",
  name = tb_defines.names.tsar_bomba_explosion,
  flags = {"not-on-map"},
  animations =
  {
    {
      filename = "__base__/graphics/entity/bigass-explosion/hr-bigass-explosion-36f.png",
      flags = { "compressed" },
      animation_speed = 0.25,
      width = 324,
      height = 416,
      frame_count = 36,
      shift = util.by_pixel(0, -(48*10)),
      scale = 10,
      stripes =
      {
        {
          filename = "__base__/graphics/entity/bigass-explosion/hr-bigass-explosion-36f-1.png",
          width_in_frames = 6,
          height_in_frames = 3
        },
        {
          filename = "__base__/graphics/entity/bigass-explosion/hr-bigass-explosion-36f-2.png",
          width_in_frames = 6,
          height_in_frames = 3
        }
      }
    }
  },
  light = {intensity = 1, size = 50, color = {r=1.0, g=1.0, b=1.0}},
  sound =
  {
    aggregation =
    {
      max_count = 2,
      remove = true
    },
    variations =
    {
      {
        filename = "__base__/sound/fight/large-explosion-1.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/fight/large-explosion-2.ogg",
        volume = 1.0
      }
    }
  },
  created_effect =
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "create-particle",
          repeat_count = 5,
          entity_name = "explosion-remnants-particle",
          initial_height = 0.5,
          speed_from_center = 0.08,
          speed_from_center_deviation = 0.15,
          initial_vertical_speed = 0.08,
          initial_vertical_speed_deviation = 0.15,
          offset_deviation = {{-0.2, -0.2}, {0.2, 0.2}}
        }
      }
    }
  }
}

})
