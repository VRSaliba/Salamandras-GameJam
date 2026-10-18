//image_angle = point_direction(x, y, mouse_x, mouse_y);

depth = -y;


var l5C9D43FD_0;
l5C9D43FD_0 = mouse_check_button_pressed(mb_left);
if (l5C9D43FD_0) and (can_input == true) and point_distance(x, y, mouse_x, mouse_y) > 10
{
	new_obj_bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
	audio_play_sound(shotgunShot, 0, 0, 1.0, 0.5, random_range(0.9, 1.2));

	with(new_obj_bullet) {
		direction = point_direction(x, y, mouse_x, mouse_y);
	
		speed = 20;
	
		damage = obj_player.attack_dmg;
	}
}

if(can_input){

	if (keyboard_check(ord("A"))){
		if (place_meeting(x - move_speed, y, obj_colision) == false)
		 {
			 x -= move_speed;
		 }
		sprite_index = sprt_player_run_left;
		_moving = true;
		last_dir = 1;
	}
	else if (keyboard_check(ord("D"))){
		if (place_meeting(x + move_speed, y, obj_colision) == false)
		 {
			 x += move_speed;
		 }
	;
		sprite_index = sprt_player_run_right;
		_moving = true;
		last_dir = 2;
	}
	else if (keyboard_check(ord("W"))){
		if (place_meeting(x, y - move_speed, obj_colision) == false)
		 {
			 y -= move_speed;
		 }
		sprite_index = sprt_player_run_up;
		_moving = true;
		last_dir = 3;
	}
	else if (keyboard_check(ord("S"))){
		if (place_meeting(x, y + move_speed, obj_colision) == false)
		 {
			 y += move_speed;
		 }
		sprite_index = sprt_player_run_down;
		_moving = true;
		last_dir = 4;
	}
	else if (keyboard_check_pressed(vk_nokey)){
		_moving = false;
		switch last_dir{
			case 1: sprite_index = sprt_player_idle_left;
			case 2: sprite_index = sprt_player_idle_right;
			case 3: sprite_index = sprt_player_idle_back;
			case 4: sprite_index = sprt_player_idle_front;
		}
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

if current_exp >= max_exp
{
	current_level++;
	current_exp = current_exp - max_exp;
	max_exp = max_exp * 1.2;
}
