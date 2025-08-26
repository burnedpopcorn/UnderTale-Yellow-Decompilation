if (global.dunes_flag[41] >= 1 && global.dunes_flag[41] < 6)
{
    if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
    {
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            message[0] = "* You can mess with that#  later.";
            message[1] = "* We need to go to#  Ceroba's house.";
            prt[0] = spr_martlet_head_moderate;
            prt[1] = spr_martlet_head_moderate;
        }
    }
    
    exit;
}

event_inherited();

if (image_speed > 0)
    image_speed = 0.4;
