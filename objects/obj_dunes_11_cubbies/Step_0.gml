if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
{
    scr_text();
    waiter = 1;
}

if (waiter != 1)
    exit;

if (global.dunes_flag[5] == 0)
{
    if (global.dialogue_open)
    {
        with (msg)
        {
            ch_msg = 2;
            ch[1] = "Yes";
            ch[2] = "No";
            message[0] = "* (A set of cubbies dividing the#  miners' personal belongings.)";
            message[1] = "* (You notice a discarded belt#  buckle lying in one of the#  compartments.)";
            message[2] = "* (Take it?)";
            
            if (outcome == 1 && !scr_item_exists_check("Steel Buckle"))
            {
                if (scr_item("Steel Buckle"))
                {
                    global.dunes_flag[5] = 1;
                    
                    if (global.route != 3)
                        message[3] = "* (You \"borrowed\" a steel belt#  buckle!)";
                    else
                        message[3] = "* (You took the steel belt#  buckle.)";
                    
                    instance_destroy(obj_dunes_11_steel_buckle);
                }
                else
                {
                    message[3] = "* (Not enough space.)";
                }
            }
            
            if (outcome == 2)
                global.dialogue_open = false;
        }
    }
    else
    {
        waiter = 0;
    }
}

if (global.dunes_flag[5] == 1)
{
    if (global.dialogue_open)
    {
        with (msg)
        {
            if (global.route == 3)
                message[0] = "* (A bunch of junk sits in some#  cubbies.)";
            else
                message[0] = "* (Taking anything else would#  definitely be theft.)";
        }
    }
    else
    {
        waiter = 0;
    }
}
