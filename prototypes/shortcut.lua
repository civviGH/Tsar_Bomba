local function shortcut_icon(suffix, size)
    return {
        filename = '__TsarBomba__/graphics/shortcut-'..suffix,
        priority = 'extra-high-no-scale',
        size = size,
        scale = 1,
        flags = {'icon'}
    }
end

data:extend({

{
  type = 'shortcut',
  name = 'tsarbomba-shortcut',
  order = 'a[alt-mode]-b[copy]',
  associated_control_input = 'get-tapeline-tool',
  action = 'create-blueprint-item',
  item_to_create = 'tsarbomba-capsule',
  icon = shortcut_icon('x32.png', 32),
  small_icon = shortcut_icon('x24.png', 24),
  disabled_icon = shortcut_icon('x32-white.png', 32),
  disabled_small_icon = shortcut_icon('x24-white.png', 24)
},
{
  type = 'custom-input',
  name = 'get-tsarbomba-tool',
  key_sequence = 'ALT + T',
  action = 'create-blueprint-item',
  item_to_create = 'tsarbomba-capsule'
},
{
  type = "capsule",
  name = "tsarbomba-capsule",
  icons = {
      {icon='__TsarBomba__/graphics/black.png', icon_size=1, scale=64},
      {icon='__TsarBomba__/graphics/shortcut-x32-white.png', icon_size=32}
  },
  subgroup = 'capsule',
  order = 'zz',
  flags = {'hidden', 'only-in-cursor'},
  stack_size = 1,
  stackable = false,
  capsule_action = {
    type = 'use-on-self',
    uses_stack = false,
    attack_parameters = {
      type = 'projectile',
      ammo_category = 'capsule',
      cooldown = 120,
      range = 1000000,
      ammo_type = {
        category = 'capsule',
        target_type = 'position',
        action = {
          type = 'direct',
          action_delivery = {
            type = 'instant',
            target_effects = {
              type = 'damage',
              damage = {type='physical', amount=0}
            }
          }
        }
      }
    }
  }
}

})
