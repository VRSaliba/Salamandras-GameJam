var chosen_animation = random_range(0, 1);

if chosen_animation > 0.5
{
	sprite_index = sprt_player_death_back
}
else
{
	sprite_index = sprt_player_death_front
}
alarm[0] = room_speed * 0.7;