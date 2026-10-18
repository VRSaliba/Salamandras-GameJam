mp_potential_step_object(obj_player.x, obj_player.y, move_speed, obj_enemy_melee);

if (point_distance(x, y, obj_player.x, obj_player.y) <= attack_range and can_attack == true)
{
	can_attack = false;
	alarm[0] = attack_speed * game_get_speed(gamespeed_fps);
	show_debug_message("enemy_id " + string(self.enemy_id));
	 sprite_index = spr_bush_attack;
				audio_play_sound(whip, 0, false)
				show_debug_message("bush_sprite");
				alarm[1] = 13;

}