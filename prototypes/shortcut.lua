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
  item_to_create = tb_defines.names.selection_tool,
  icon = shortcut_icon('x32-black.png', 32),
  small_icon = shortcut_icon('x32-black.png', 24),
  disabled_icon = shortcut_icon('x32-white.png', 32),
  disabled_small_icon = shortcut_icon('x32-white.png', 24)
},
{
  type = 'custom-input',
  name = tb_defines.names.custom_input,
  key_sequence = 'ALT + T',
  action = 'create-blueprint-item',
  item_to_create = tb_defines.names.selection_tool
},
{
  type = "selection-tool",
  name = tb_defines.names.selection_tool,
  stack_size = 1,
  icon = "__TsarBomba__/graphics/shortcut-x32-white.png",
  icon_size = 32,
  flags = {"only-in-cursor", "hidden"},
  selection_color = "red",
  alt_selection_color = "red",
  selection_mode = {"nothing"},
  alt_selection_mode = {"nothing"},
  selection_cursor_box_type = "entity",
  alt_selection_cursor_box_type = "entity"
}

})
