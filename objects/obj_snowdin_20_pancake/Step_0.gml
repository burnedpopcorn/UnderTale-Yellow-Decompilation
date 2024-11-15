if (scr_interact() && keyboard_multicheck_pressed(0))
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    
    with (msg)
    {
        if (other.npc_flag == 0)
        {
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
            message[0] = "* (You notice a fresh pancake#  lying under the bench.)";
            message[1] = "* (Take it?)";
            
            if (outcome == 1)
            {
                if (scr_item("Hndw Pancake"))
                {
                    message[2] = "* (Obtained Honeydew Pancake!)";
                    other.npc_flag = 1;
                }
                else
                {
                    message[2] = "* (Not enough space.)";
                }
            }
            
            if (outcome == 2)
                global.dialogue_open = false;
        }
        else
        {
            message[0] = "* (A wooden bench.)";
        }
    }
    
    if (!global.dialogue_open)
        waiter = 0;
}

if (ds_map_find_value(global.npc_map, npc_id) != npc_flag)
    ds_map_replace(global.npc_map, npc_id, npc_flag);
