/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0E2A12BC
/// @DnDInput : 2
/// @DnDArgument : "function" "TakeDamage"
/// @DnDArgument : "arg" "other"
/// @DnDArgument : "arg_1" "damage"
TakeDamage(other, damage);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7CB59F60
instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4F91D489
/// @DnDArgument : "var" "other.life"
/// @DnDArgument : "op" "3"
if(other.life <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 08FCF308
	/// @DnDApplyTo : other
	/// @DnDParent : 4F91D489
	with(other) instance_destroy();}