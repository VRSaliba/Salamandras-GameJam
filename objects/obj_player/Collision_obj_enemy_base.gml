if (can_take_dmg){
  TakeDamage(self, other.attack_dmg);
  can_take_dmg = false;
  alarm[0] = room_speed * 1.5;
  if(life <= 0){
      can_input = false; 
	  alarm[0] = room_speed * 2;
	  // resetar a fase
  }
}


