--require("scripts/scripts")
require("custom_defines")

local function get_center_of_bounding_box(bbox)
  local x_coord = (bbox.left_top.x + bbox.right_bottom.x) / 2
  local y_coord = (bbox.left_top.y + bbox.right_bottom.y) / 2
  return {x = x_coord, y = y_coord}
end

local function create_bounding_box(p, r)
  local bbox = {{p.x - 32*r, p.y - 32*r},{p.x + 32*r, p.y + 32*r}}
  return bbox
end

function fselect(event)
  return
end

function altselect(event)
  local center = get_center_of_bounding_box(event.area)
  local player = game.get_player(event.player_index)
  local surface = player.surface
  local force = player.force
  force.chart(surface, create_bounding_box(center, 2))
  surface.create_entity{name = tb_defines.names.tsar_projectile, position = {x = 0, y = 0}, force = force, target = center, speed = 5}
end

script.on_event(defines.events.on_player_selected_area, function(event)
  fselect(event)
end)

script.on_event(defines.events.on_player_alt_selected_area, function(event)
  altselect(event)
end)
