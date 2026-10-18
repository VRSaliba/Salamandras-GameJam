if current_wave > number_waves
{
	show_debug_message("you beat the level!");
	can_spawn = false;
}

if (timer >= current_spawn_interval){
	var cam_w = camera_get_view_width(view_camera[0]);
	var cam_h = camera_get_view_height(view_camera[0]);
	var cx = obj_player.x;
	var cy = obj_player.y;
	var offset = 50;

	var edge = irandom(3);
	var sx, sy;
	switch (edge) {
    case 0: sx = cx - cam_w / 2 - offset; sy = cy + irandom_range(-cam_h / 2, cam_h / 2); break; // left
    case 1: sx = cx + cam_w / 2 + offset; sy = cy + irandom_range(-cam_h / 2, cam_h / 2); break; // right
    case 2: sx = cx + irandom_range(-cam_w / 2, cam_w / 2); sy = cy - cam_h / 2 - offset; break; // top
    case 3: sx = cx + irandom_range(-cam_w / 2, cam_w / 2); sy = cy + cam_h / 2 + offset; break; // bottom
}
	var e = instance_create_layer(sx, sy, "Instances", obj_enemy_melee);
	timer = 0;
	
	current_enemies_alive++;
	current_wave_spawned++;
	total_enemies_spawned++;
}

if can_spawn
{
	if current_wave_spawned < max_enemies_spawned_wave
	{
		if current_enemies_alive < max_enemies_alive
		{
			timer++;
		}
	}
	else
	{
		alarm[0] = break_duration * room_speed;
		current_spawn_interval = break_spawn_interval;
		current_wave++;
		max_enemies_spawned_wave += enemies_scaling;
		max_enemies_alive += enemies_scaling / 5;
	}
}