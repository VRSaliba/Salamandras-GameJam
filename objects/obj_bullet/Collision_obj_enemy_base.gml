if (other.dying) exit; 
show_debug_message("damage" + string(damage))
TakeDamage(other, damage);

instance_destroy();

if(other.life <= 0)
{
	other.dying = true;
	sprite_index = spr_bush_dying;
	image_index = 0;     
	image_speed = 1;	
}