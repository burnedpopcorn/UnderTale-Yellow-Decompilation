event_inherited();
var rephil_col = make_color_rgb(211, 231, 221);
depth = -room_height;

if (interact)
{
    is_talking = 1;
    waiter = 1;
    global.cutscene = true;
}

if (waiter == 0)
{
    if (sprite_index != spr_rephil_turn_overworld_yellow)
    {
        sprite_index = spr_rephil_turn_overworld_yellow;
        image_index = 4;
    }
    
    if (image_index <= 2)
    {
        image_index = 2;
        image_speed = 0;
    }
    else
    {
        image_speed = -0.2;
    }
}

if (waiter > 0)
{
    if (waiter == 1)
    {
        if (image_index >= 4)
        {
            sprite_index = spr_rephil_overworld_yellow;
            image_speed = 0;
            waiter = 2;
        }
        else
        {
            image_speed = 0.2;
        }
        
        exit;
    }
    
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                talker[0] = other.object_index;
                color = true;
                col_modif[0] = rephil_col;
                message[0] = "* 'Ey, would ya' look at that! If#  it ain't our fresh recruit.";
                message[1] = "* How's it goin' kid, you givin'#  the shufflers a good name out#  'ere?";
                message[2] = "* Ya' know, it's tough being a#  world renowned gang leader.";
                message[3] = "* I gotta run 'round the#  Underground every now 'n then.";
                message[4] = "* Make sure we're being properly#  represented, ya' know?";
                message[5] = "* Ya' ain't gettin' respect like#  us by lazin' around, kid.";
                
                for (var i = 0; i < array_length(message); i++)
                    message_col[i][0] = message[i];
            }
            
            break;
        
        case 1:
            with (msg)
            {
                talker[0] = other.object_index;
                color = true;
                col_modif[0] = rephil_col;
                message[0] = "* 'Ey kid. 'Ave you seen a#  certain associate 'round?";
                message[1] = "* A fancy lil' fella. Wears a#  nice suit 'n a stubby hat. ";
                message[2] = "* We've got some matters to#  discuss with 'em.";
                
                for (var i = 0; i < array_length(message); i++)
                    message_col[i][0] = message[i];
            }
            
            break;
        
        case 2:
            with (msg)
            {
                talker[0] = other.object_index;
                color = true;
                col_modif[0] = rephil_col;
                message[0] = "* This town 'ere's pretty nice.#  Though, I'm not fond of#  the local gang.";
                message[1] = "* They think they're the hot#  stuff but they've got nothin'#  on The Shufflers!";
                
                for (var i = 0; i < array_length(message); i++)
                    message_col[i][0] = message[i];
            }
            
            break;
    }
    
    if (!global.dialogue_open)
    {
        waiter = 0;
        global.cutscene = false;
        
        if (npc_flag < 2)
            npc_flag++;
    }
}
