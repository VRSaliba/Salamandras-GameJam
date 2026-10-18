mp_potential_step_object(obj_player.x, obj_player.y, move_speed, obj_enemy_melee);

if (point_distance(x, y, obj_player.x, obj_player.y) <= attack_range and can_attack == true)
{
	can_attack = false;
	alarm[0] = attack_speed * game_get_speed(gamespeed_fps);
	switch enemy_id
	{
		case 1: sprite_index = spr_bush_attack;
				alarm[1] = 13;
	}
}

