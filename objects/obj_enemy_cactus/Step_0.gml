
if (point_distance(x, y, obj_player.x, obj_player.y) <= attack_range)
{
	if can_attack == true
	{
	   new_obj_bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_spike);
		with(new_obj_bullet) {
			damage = obj_enemy_cactus.attack_dmg;
		}
	
		can_attack = false;
		alarm[0] = attack_speed * game_get_speed(gamespeed_fps);
		show_debug_message("enemy_id " + string(self.enemy_id));
		sprite_index = sprt_cactus_attack;
		show_debug_message("cactus_sprite");
		alarm[1] = 58;
		move_speed = 0;
	}
}
else
{
	mp_potential_step_object(obj_player.x, obj_player.y, move_speed, obj_enemy_melee);
}