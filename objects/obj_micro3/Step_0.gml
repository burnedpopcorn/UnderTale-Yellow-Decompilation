if (keyboard_multicheck_pressed(0))
{
    if (scr_interact() == true)
    {
        if (obj_pl.direction == 90 && global.tinypuzzle == 3)
        {
            audio_play_sound(snd_tinyfroggit, 10, 0);
            audio_sound_pitch(snd_tinyfroggit, 2);
            global.tinypuzzle = 2;
        }
    }
}