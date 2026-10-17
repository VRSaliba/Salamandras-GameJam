timer += 1;

if (timer >= interval){
	 instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_enemy_melee);
	 timer = 0;
}


