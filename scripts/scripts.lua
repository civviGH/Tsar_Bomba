function capsule(event)
  if event.item.name == "tsarbomba-capsule" then
    if global.tsar_bomb_counter == nil then
      global.tsar_bomb_counter = 0
    end
    if global.tsar_bomb_counter > 0 then
    capsule_user = game.get_player(event.player_index)
    capsule_surface = capsule_user.surface
      capsule_surface.create_entity{name = "tsar-projectile", position = event.position, force = capsule_user.force, target = event.position, speed = 0.1}
      global.tsar_bomb_counter = global.tsar_bomb_counter - 1
      game.print("you now have " .. global.tsar_bomb_counter .. " bombs ready")
    else
      game.print("no tsar bombs ready")
    return
    end
  end

  if event.item.name == "bremote" then
    player = game.get_player(event.player_index)
    p = event.position
    local chunks_radius = 1
    player.force.chart(player.surface, {{p.x - 32*chunks_radius, p.y - 32*chunks_radius},{p.x + 32*chunks_radius, p.y + 32*chunks_radius}})
    return
  end
end

script.on_event(defines.events.on_player_used_capsule, function(event)
  capsule(event)
end)

script.on_event(defines.events.on_player_dropped_item, function(event)
  if global.tsar_bomb_counter == nil then
    global.tsar_bomb_counter = 0
  end
  global.tsar_bomb_counter = global.tsar_bomb_counter + 1
  game.print("you now have " .. global.tsar_bomb_counter .. " bombs ready")
end)

script.on_event(defines.events.on_put_item, function(event)
  player = game.players[event.player_index]
  game.print(player.cursor_stack.name)
  game.print(event.position)
  player.chart(game.player.surface, {lefttop = {x = -1024, y = -1024}, rightbottom = {x = 1024, y = 1024}})
end)
