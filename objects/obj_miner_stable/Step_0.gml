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
                sndfnt = sndfnt_default;
                message[0] = "* I just ADORE mining!!";
                message[1] = "* Mine mine mine mine mine mine#  day and night!!";
                message[2] = "* Gonna find a whole buncha...#  SPARKLY GEmS!!";
            }
            
            npc_flag++;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Do not doubt my work ethic for#  one sEcond!!";
                message[1] = "* I work HARD and am nOT on thin#  ice with the Foreman!!";
                message[2] = "* I am on the thickest ice of all#  tIME!!";
            }
            
            npc_flag++;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Mining mining mining!!";
                message[1] = "* ...";
                message[2] = "* Okay, I can't handle this!!";
                message[3] = "* I'm on my fourteenth warning!!#  FOURTEENTH!!";
                message[4] = "* I've heard rumors that the#  Foreman has a \"sixteen strikes,#  you're out\" policy!!";
                message[5] = "* Couldn't he lighten up a#  little??";
            }
            
            npc_flag++;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* HahA!! This is fun!!";
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
    if (npc_flag == 3 && obj_dialogue.message_current > 1 && obj_dialogue.message_current < 5)
        sprite_index = spr_miner_unstable;
    else
        sprite_index = spr_miner_stable_talk;
    
    image_speed = 0.4;
}
