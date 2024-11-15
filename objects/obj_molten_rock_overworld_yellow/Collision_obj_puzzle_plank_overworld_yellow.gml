if (sprite_index == spr_molten_rock_overworld_yellow)
{
    rollSpd = 0;
    depth = -100;
    sprite_index = spr_molten_rock_explode_overworld_yellow;
    image_index = 0;
    image_speed = 0.4;
    audio_play_sound(snd_rock_break, 1, 0);
    audio_stop_sound(snd_rock_roll);
    audio_stop_sound(snd_puzzle_woodmove);
}
