function KillEnemy(Enemy){
	other.dying = true;
	switch Enemy.enemy_id {
		case 1: instance_create_layer(x, y, "Instances", obj_bullet);
		default: exit;
	}
}