if (can_take_dmg){
  TakeDamage(self, other.attack_dmg);
  show_debug_message(string(life)); 
  can_take_dmg = false;
  alarm[0] = room_speed * 1.5;
  show_debug_message("invulneravel ao dano");
  if(life <= 0){
      can_input = false; 
	  alarm[0] = room_speed * 2;
	  // resetar a fase
	  show_debug_message("morreu");
  }
}


