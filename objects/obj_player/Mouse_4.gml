if(can_input == true)
{
	instance_create_layer(self.x, self.y, "Instances", obj_bullet);

	with(obj_bullet) {
		speed = 20;
		damage = attack_dmg;
	}
}