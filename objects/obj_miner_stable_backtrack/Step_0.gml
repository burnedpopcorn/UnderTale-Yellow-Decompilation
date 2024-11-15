event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Can you believe I'm STILL#  mining?\t";
                message[1] = "* I'm just THAT committed to my#  job!!\t";
                message[2] = "* ...\t";
                message[3] = "* ...You think Angie heard that?";
            }
            
            npc_flag++;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* I am confined to these brown#  walls forever!!!!!";
            }
            
            break;
    }
}

if (!is_talking)
{
    sprite_index = spr_miner_stable;
    image_speed = 0.4;
    
    if (floor(image_index == 0) || ceil(image_index) == 6)
    {
        if (point_in_rectangle(x, y, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0)))
        {
            if (!audio_is_playing(snd_pickaxe_ding) && !audio_is_playing(snd_pickaxe_ding2))
                audio_play_sound(choose(snd_pickaxe_ding, snd_pickaxe_ding2), 1, 0);
        }
    }
}
else
{
    sprite_index = spr_miner_stable_talk;
    image_speed = 0.4;
}
