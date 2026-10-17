image_angle = point_direction(x, y, mouse_x, mouse_y);

var l0DC19EC2_0;
l0DC19EC2_0 = mouse_check_button_pressed(mb_left);
if (l0DC19EC2_0)
{
	new_obj_bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

	with(obj_bullet) {
		direction = obj_player.image_angle;
	
		speed = 20;
	
		image_angle = obj_player.image_angle;
	
		damage = damage;
	}
}

/*
if (keyboard_check(ord("A"))){
	x -= 4;
	sprite_index = sprt_player_run_left;
	_moving = true;
}
else if (keyboard_check(ord("D"))){
	x += 4;
	sprite_index = sprt_player_run_right;
	_moving = true;
}
else if (keyboard_check(ord("W"))){
	y -= 4;
	sprite_index = sprt_player_run_up;
	_moving = true;
}
else if (keyboard_check(ord("S"))){
	y += 4;
	sprite_index = sprt_player_run_down;
	_moving = true;
}
else if (keyboard_check_pressed(vk_nokey)){
	_moving = false;
} 


if (!_moving){
	sprite_index = Sprite1;
	image_speed = 0;
	image_index = 0;
}	

if (_moving){
	image_speed = 0.3; 
}
*/