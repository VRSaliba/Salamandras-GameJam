if dead {
	exit;	
}

if (can_take_dmg){
  TakeDamage(self, other.damage);
  if(life <= 0){
	audio_play_sound(game_over, 0, false, 1.0, 0, random_range(0.9, 1.2));
	dead = true;
	can_input = false;
	
	life = obj_game_manager.player_life_checkpoint
	armor = obj_game_manager.player_armor_checkpoint
	move_speed = obj_game_manager.player_move_speed_checkpoint
	attack_speed = obj_game_manager.player_attack_speed_checkpoint
	attack_dmg = obj_game_manager.player_attack_dmg_checkpoint
	points = obj_game_manager.player_points_checkpoint
	previous_level = obj_game_manager.player_previous_level_checkpoint
	current_level = obj_game_manager.player_current_level_checkpoint
	current_exp = obj_game_manager.player_current_exp_checkpoint
	max_exp = obj_game_manager.player_max_exp_checkpoint
	
	alarm[1] = room_speed * 2.5;
	show_debug_message("morreu");

  }
  else
  {
	  audio_play_sound(retro_hurt, 0, false, 1.0, 0, random_range(0.9, 1.2));
	  show_debug_message(string(life)); 
	  can_take_dmg = false;
	  alarm[0] = room_speed * 1.5;
	  show_debug_message("invulneravel ao dano");
  }
}

