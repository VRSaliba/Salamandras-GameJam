//image_angle = point_direction(x, y, mouse_x, mouse_y);

var l5C9D43FD_0;
l5C9D43FD_0 = mouse_check_button_pressed(mb_left);
if (l5C9D43FD_0)
{
	new_obj_bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

	with(new_obj_bullet) {
		direction = point_direction(x, y, mouse_x, mouse_y);
	
		speed = 20;
	
		image_angle = point_direction(x, y, mouse_x, mouse_y);
	
		damage = obj_player.attack_dmg;
	}
}

if(can_input){

	if (keyboard_check(ord("A"))){
		x -= move_speed;
		sprite_index = sprt_player_run_left;
		_moving = true;
	}
	else if (keyboard_check(ord("D"))){
		x += move_speed;
	;
		sprite_index = sprt_player_run_right;
		_moving = true;
	}
	else if (keyboard_check(ord("W"))){
		y -= move_speed;
		sprite_index = sprt_player_run_up;
		_moving = true;
	}
	else if (keyboard_check(ord("S"))){
		y += move_speed;
		sprite_index = sprt_player_run_down;
		_moving = true;
	}
	else if (keyboard_check_pressed(vk_nokey)){
		_moving = false;
	} 
}

if (!_moving){
	sprite_index = Sprite1;
	image_speed = 0;
	image_index = 0;
}	

if (_moving){
	image_speed = 0.3; 
}

