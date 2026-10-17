/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 2AE65760
/// @DnDArgument : "angle" "point_direction(x, y, mouse_x, mouse_y)"
image_angle = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 0DC19EC2
var l0DC19EC2_0;l0DC19EC2_0 = mouse_check_button_pressed(mb_left);if (l0DC19EC2_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3419651C
	/// @DnDParent : 0DC19EC2
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "new_obj_bullet"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	new_obj_bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 53542EDB
	/// @DnDApplyTo : {obj_bullet}
	/// @DnDParent : 0DC19EC2
	with(obj_bullet) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1087C4E4
		/// @DnDParent : 53542EDB
		/// @DnDArgument : "expr" "obj_player.image_angle"
		/// @DnDArgument : "var" "direction"
		direction = obj_player.image_angle;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 68CE504F
		/// @DnDParent : 53542EDB
		/// @DnDArgument : "expr" "20"
		/// @DnDArgument : "var" "speed"
		speed = 20;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1991F73E
		/// @DnDParent : 53542EDB
		/// @DnDArgument : "expr" "obj_player.image_angle"
		/// @DnDArgument : "var" "image_angle"
		image_angle = obj_player.image_angle;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 69C22896
		/// @DnDParent : 53542EDB
		/// @DnDArgument : "expr" "damage"
		/// @DnDArgument : "var" "damage"
		damage = damage;
	}}