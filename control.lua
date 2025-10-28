script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
  if event.setting == "lrm-faster-running-multiplier" then
    local player = game.players[event.player_index]
    local multiplier = settings.global["lrm-faster-running-multiplier"].value
    player.character_running_speed_modifier = multiplier - 1.0
  end
end)
