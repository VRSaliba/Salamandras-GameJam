audio_play_sound(yarzur_ofc_demolish_451099, 0, true)
obj_player.visible = true
obj_player.x = player_position_x_checkpoint;
obj_player.y = player_position_y_checkpoint;

player_life_checkpoint = obj_player.life
player_armor_checkpoint = obj_player.armor
player_move_speed_checkpoint = obj_player.move_speed
player_attack_speed_checkpoint = obj_player.attack_speed
player_attack_dmg_checkpoint = obj_player.attack_dmg
player_points_checkpoint = obj_player.points
player_previous_level_checkpoint = obj_player.previous_level
player_current_level_checkpoint = obj_player.current_level
player_current_exp_checkpoint = obj_player.current_exp
player_max_exp_checkpoint = obj_player.max_exp
obj_player.can_take_dmg = true
obj_player.dead = false
obj_player.can_input = true

player_position_x_checkpoint = obj_player.x
player_position_y_checkpoint = obj_player.y