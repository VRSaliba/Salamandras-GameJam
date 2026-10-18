mp_potential_step_object(obj_player.x, obj_player.y, move_speed, obj_enemy_melee);

if (point_distance(x, y, obj_player.x, obj_player.y) <= attack_range and can_attack == true)
{
	can_attack = false;
	alarm[0] = attack_speed * game_get_speed(gamespeed_fps);
	show_debug_message("enemy_id " + string(self.enemy_id));
	switch self.enemy_id
	{
		case 1: sprite_index = spr_bush_attack;
				show_debug_message("bush_sprite");
				alarm[1] = 13;
				break;
		case 2: sprite_index = sprt_cactus_attack;
				show_debug_message("cactus_sprite");
				alarm[1] = 13;
				break;
	}
}