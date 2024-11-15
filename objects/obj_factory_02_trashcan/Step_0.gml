event_inherited();

if (scr_interact() && keyboard_multicheck_pressed(0))
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    
    if (npc_flag == 0)
    {
        with (msg)
        {
            message[0] = "* (You find a stick of beef#  jerky in the trash can.)";
            message[1] = "* (Take it?)";
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
                
                other.waiter = 0;
            }
            
            if (outcome == 2)
            {
                global.dialogue_open = false;
                other.waiter = 0;
            }
        }
    }
    else
    {
        with (msg)
            message[0] = "* (It's empty.)";
        
        waiter = 0;
    }
}
