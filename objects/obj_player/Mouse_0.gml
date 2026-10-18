image_angle = point_direction(x, y, mouse_x, mouse_y);

var l5C9D43FD_0;l5C9D43FD_0 = mouse_check_button(mb_left);if (l5C9D43FD_0){	new_obj_bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

	with(obj_bullet) {
		direction = point_direction(x, y, mouse_x, mouse_y);
	
		speed = 20;
	
		image_angle = point_direction(x, y, mouse_x, mouse_y);
	
		damage = obj_player.attack_dmg;
	}}