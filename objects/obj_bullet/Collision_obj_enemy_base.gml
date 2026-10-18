if (other.dying) exit; 
show_debug_message("damage" + string(damage))
TakeDamage(other, damage);

instance_destroy();

if(other.life <= 0)
{
	other.speed = 0
	obj_player.current_exp += other.xp_reward
	obj_player.points += other.points_reward
	
	show_debug_message("exp " + string(obj_player.current_exp) + "/" + string(obj_player.max_exp))
	show_debug_message("points " + string(obj_player.points))
	show_debug_message("level " + string(obj_player.current_level))
	
	instance_destroy(other)
}