/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 04624062
/// @DnDArgument : "value" "obj_player.direction"
/// @DnDArgument : "instvar" "2"
direction = obj_player.direction;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 4B652C44
/// @DnDArgument : "value" "20"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "instvar" "3"
speed += 20;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 2B330C68
/// @DnDArgument : "angle" "obj_player.rotation"
image_angle = obj_player.rotation;