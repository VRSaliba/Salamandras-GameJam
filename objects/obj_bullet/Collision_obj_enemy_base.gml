if (other.dying) exit; 
show_debug_message("damage" + string(damage))
TakeDamage(other, damage);

instance_destroy();

if(other.life <= 0)
{
	other.speed = 0
	instance_destroy(other)
}