if (keyboard_multicheck_pressed(vk_nokey))
{
    if (scr_interact() == true)
    {
        if (obj_pl.direction == 90 && global.tinypuzzle == 5)
        {
            audio_play_sound(snd_tinyfroggit, 10, 0);
            audio_sound_pitch(snd_tinyfroggit, 1);
            global.tinypuzzle = 4;
        }
    }
}
