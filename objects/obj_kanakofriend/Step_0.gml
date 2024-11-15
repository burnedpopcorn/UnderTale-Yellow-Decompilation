event_inherited();
depth = obj_playground_swing.depth - 1;

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        switch (other.npc_flag)
        {
            case 0:
            case 1:
                message[0] = "* Sigh...";
                message[1] = "* This playground used to be fun.";
                message[2] = "* Ever since my playmate stopped#  showing up, it's become boring.";
                message[3] = "* I wonder where they went?";
                
                if (other.npc_flag == 0)
                    other.npc_flag++;
                
                break;
            
            case 2:
                message[0] = "* Thanks for sitting with me.";
                message[1] = "* I hope we can be friends.";
                other.npc_flag++;
                break;
            
            case 3:
                message[0] = "* I better get going soon.";
                message[1] = "* My papa's probably wondering#  where I am.";
                break;
        }
    }
}
