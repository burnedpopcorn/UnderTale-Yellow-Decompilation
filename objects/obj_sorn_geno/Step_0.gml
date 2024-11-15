event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        portrait = false;
        
        switch (other.npc_flag)
        {
            case 0:
                message[0] = "* This is a strange turn of#  events.";
                message[1] = "* I wonder where everyone ran off#  to?";
                message[2] = "* I don't suppose you know.";
                other.npc_flag += 1;
                break;
            
            case 1:
                message[0] = "* I hope this evacuation doesn't#  last too long.";
                message[1] = "* I wanna get back up there and#  jam.";
                break;
        }
    }
}
