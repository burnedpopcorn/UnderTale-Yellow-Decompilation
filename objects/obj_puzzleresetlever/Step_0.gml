if ((room == rm_darkruins_06 && global.flag[2] == true) || (room == rm_darkruins_10 && global.flag06 == true))
    exit;

if (keyboard_multicheck_pressed(vk_nokey))
{
    if (scr_interact() == true && obj_pl.direction == 90 && image_index == 0)
    {
        if (room == rm_darkruins_06)
        {
            with (obj_lightp)
            {
                if (i == 1 || i == 4)
                    turn = false;
                else
                    turn = true;
            }
        }
        
        if (room == rm_darkruins_12)
        {
            with (obj_lightp2)
            {
                if (i == 6 || i == 2 || i == 4 || i == 5)
                    turn = false;
                else
                    turn = true;
            }
        }
        
        audio_play_sound(snd_switch, 1, 0);
        image_index = 1;
        alarm[0] = 20;
    }
}
