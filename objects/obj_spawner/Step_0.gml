timer += 1;

if (timer >= interval){
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
	
	//instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_enemy_melee);
	timer = 0;
}


