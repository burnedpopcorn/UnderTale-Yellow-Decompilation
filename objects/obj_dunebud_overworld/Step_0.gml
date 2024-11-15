event_inherited();

if (interact == 1)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* Gwah gwah goggle wibble woo~";
                message[1] = "* (You smile and nod like you#  understood Dunebud.)";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* Blep blep boop wub weeeee~";
                message[1] = "* (Hold on...)";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* Pleep plop doop de do~";
                message[1] = "* (Could it be?)";
            }
            
            npc_flag += 1;
            break;
        
        case 3:
            with (msg)
            {
                message[0] = "* Wuwuwu aaaaAAAAAAAAAAAAAAA#  hehe~";
                message[1] = "* (Uh, nevermind.)";
            }
            
            npc_flag += 1;
            break;
        
        case 4:
            with (msg)
                message[0] = "* Wiggle woggle~";
            
            break;
    }
}
