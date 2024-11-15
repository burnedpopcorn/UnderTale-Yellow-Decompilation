if (scr_interact() && keyboard_multicheck_pressed(0))
{
    scr_text();
    
    if (global.geno_complete[3] || global.route == 3)
    {
        scr_text();
        
        with (msg)
            message[0] = "(They're asleep...)";
        
        exit;
    }
    
    if (global.party_member != -4 && global.dunes_flag[41] > 0)
    {
        with (msg)
        {
            sndfnt = 102;
            message[0] = "* (We need to stay#  focused.)";
            message[1] = "* (Let's not bother others#  with our problems.)";
            prt[0] = 321;
            prt[1] = 338;
        }
        
        exit;
    }
    
    is_talking = 1;
    waiter = 1;
}

if (waiter == 1)
{
    if (global.dunes_flag[17] == 0)
    {
        with (msg)
        {
            message[0] = "* Sorry buddy, this path is#  blocked.";
            message[1] = "* I ain't movin' no matter what#  anyone does to provoke me.";
            message[2] = "* You wouldn't understand.\t";
            message[3] = "* Girlboss behavior.";
        }
        
        global.dunes_flag[17] = 1;
        waiter = 0;
    }
    else if (global.dunes_flag[17] == 1)
    {
        with (msg)
        {
            message[0] = "* Hey, lil fella... There ain't#  nothin' to see here.";
            message[1] = "* Last I checked, anyway.";
            message[2] = "* Maybe one day there will be a#  great treasure lyin' beyond my#  hot bod.";
            message[3] = "* But as of right now, there is#  only a hot bod.\t";
            message[4] = "* Mine.";
        }
        
        global.dunes_flag[17] = 2;
        waiter = 0;
    }
    else if (global.dunes_flag[17] == 2)
    {
        with (msg)
        {
            message[0] = "* Stone-bathin' is a delicate#  process.";
            message[1] = "* The more you make me flap my#  lips the more uneven my tan#  will be.";
            message[2] = "* At this rate I'm gonna be a#  whole-ass gradient.";
        }
        
        global.dunes_flag[17] = 3;
        waiter = 0;
    }
    else if (global.dunes_flag[17] == 3)
    {
        with (msg)
        {
            message[0] = "* Yeah. Uh-huh. Cool. Keep#  disturbin' me. Love it.";
            
            if (message_current == 1)
            {
                other.is_talking = false;
                other.waiter = 0;
            }
        }
    }
}

if (instance_exists(obj_dialogue) && is_talking == true)
{
    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
    {
        image_speed = 0;
        image_index = 0;
    }
    else
    {
        image_speed = 0.2;
    }
}
else
{
    image_speed = 0;
    is_talking = false;
}
