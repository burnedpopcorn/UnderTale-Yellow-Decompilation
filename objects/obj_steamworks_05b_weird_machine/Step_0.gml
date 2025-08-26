if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
    scene = 1;

if (scene == 1)
{
    scr_text();
    
    with (msg)
    {
        if (other.npc_flag >= 1)
        {
            message[0] = "* (It's empty now.)";
            other.scene = 0;
            exit;
        }
        
        if (global.route == 3)
        {
            message[0] = "* (There's food inside the#  machine.)";
            message[1] = "* (Take it?)";
        }
        else
        {
            message[0] = "* (You find a stick of beef#  jerky inside the machine.)";
            message[1] = "* (Take it?)";
        }
        
        ch_msg = 1;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            if (scr_item("Beef Jerky"))
            {
                message[2] = "* (You got beef jerky!)";
                other.npc_flag = 1;
            }
            else
            {
                message[2] = "* (Not enough space.)";
            }
            
            other.scene = 0;
        }
        
        if (outcome == 2)
        {
            if (global.route == 3)
                global.dialogue_open = false;
            else
                message[2] = "* (You decide not to trust the#  mysterious washer food.)";
            
            other.scene = 0;
        }
    }
}

event_inherited();
