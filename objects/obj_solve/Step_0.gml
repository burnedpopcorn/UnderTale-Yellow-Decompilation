if (place_meeting(x, y, blockparent) && pressed == 0)
{
    obj_puzzle.buttons += 1;
    pressed = 1;
    
    if (!audio_is_playing(snd_switch))
        audio_play_sound(snd_switch, 1, 0);
}
else if (!place_meeting(x, y, blockparent) && pressed == 1)
{
    obj_puzzle.buttons -= 1;
    pressed = 0;
    
    if (!audio_is_playing(snd_switch))
        audio_play_sound(snd_switch, 1, 0);
}
