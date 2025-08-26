event_inherited();
var dialogue_type = 1;

if (global.dunes_flag[4] >= 1)
    dialogue_type = 2;

if ((global.dunes_flag[4] >= 2 || scr_item_exists_check("Pickaxe")) && npc_flag < 4)
{
    if (interact)
    {
        scr_text();
        
        with (msg)
            message[0] = "* (He's too wrapped up in his#  work to speak with you.)";
    }
}
else if (dialogue_type == 1 && interact)
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
                message[0] = "* You a new hire?";
                message[1] = "* If I were you, I'd turn back#  now.";
                message[2] = "* I've been workin' this job for#  twelve years and I've about had#  enough.";
                message[3] = "* I'm probably the only monster#  that does their job 'round here.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* If you need work, go talk to#  the Foreman on the third level.";
                message[1] = "* Not sure you'll get far with#  him, though.";
            }
            
            break;
    }
}
else if (dialogue_type == 2)
{
    if (interact)
    {
        scr_text();
        is_talking = 1;
    }
    
    if (is_talking)
    {
        if (npc_flag < 2)
        {
            with (msg)
            {
                message[0] = "* What do ya want?";
                ch_msg = 0;
                ch[1] = "Elevator";
                ch[2] = "Nothing";
                
                if (outcome != 0)
                    other.branch = outcome;
                
                if (other.branch == 1)
                {
                    message[1] = "* It's jammed again?";
                    message[2] = "* I swear, nothing ever works#  here.";
                    message[3] = "* I'm busy, kid.";
                    
                    if (!global.dialogue_open)
                    {
                        other.npc_flag = 2;
                        exit;
                    }
                }
                
                if (other.branch == 2)
                    message[1] = "* Go bug someone else then.";
            }
        }
        
        if (npc_flag == 2 || npc_flag == 3)
        {
            with (msg)
            {
                if (other.npc_flag == 2)
                {
                    message[0] = "* Ugh. Fine.";
                    message[1] = "* I'll lend you my pickaxe...#  for a price.";
                    message[2] = "* How's 30G sound?";
                }
                else
                {
                    if (message_current == 0)
                        message_current = 2;
                    
                    message[2] = "* 30G, kid.";
                }
                
                ch_msg = 2;
                ch[1] = "Good";
                ch[2] = "No way";
                
                if (outcome != 0)
                    other.branch = outcome;
                
                if (other.branch == 1)
                {
                    if (global.player_gold >= 30)
                    {
                        if (scr_inventory_check_space())
                        {
                            message[3] = "* Verrry nice!";
                            message[4] = "* Here ya go!";
                            message[5] = "* Keep it. I don't need it no#  more.";
                            message[6] = "* Cause I have a spare! Heh heh.";
                            message[7] = "* (Obtained Pickaxe!)";
                            
                            if (message_current == 7)
                            {
                                if (!scr_item_exists_check("Pickaxe"))
                                {
                                    scr_item("Pickaxe");
                                    other.is_talking = false;
                                    other.npc_flag = 4;
                                    global.player_gold -= 30;
                                }
                            }
                        }
                        else
                        {
                            message[3] = "* You can't lug around a pick!";
                            message[4] = "* Go lighten your load.";
                            
                            if (!global.dialogue_open)
                                other.npc_flag = 3;
                        }
                    }
                    else
                    {
                        message[3] = "* Quit wastin' my time.";
                        message[4] = "* Come back when you have the G.";
                        
                        if (!global.dialogue_open)
                            other.npc_flag = 3;
                    }
                }
                
                if (other.branch == 2)
                {
                    message[3] = "* Then I can't help ya.";
                    message[4] = "* Find another way to fix it.";
                    
                    if (!global.dialogue_open)
                        other.npc_flag = 3;
                }
            }
        }
        
        if (npc_flag == 4)
        {
            with (msg)
                message[0] = "* Thanks for the G, kid.";
        }
    }
}

if (!is_talking)
{
    branch = 0;
    sprite_index = spr_slime_mine;
    image_speed = 0.4;
    
    if (floor(image_index) == 3)
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
    sprite_index = spr_slime_talk;
    image_speed = 0.2;
}
