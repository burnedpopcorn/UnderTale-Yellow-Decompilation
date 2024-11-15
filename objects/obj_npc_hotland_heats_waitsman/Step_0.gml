event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        switch (other.npc_flag)
        {
            case 0:
                message[0] = "* Come on, I GOTTA be on the#  guest list!";
                message[1] = "* Everybody knows my name!";
                other.npc_flag++;
                break;
            
            case 1:
                message[0] = "* Any time now the bouncer's#  memory of me will come rushing#  back.";
                message[1] = "* Surprised it's taking this#  long.";
                other.npc_flag++;
                break;
            
            case 2:
                message[0] = "* If all else fails, I'll just#  dance out here. No one could#  stop me.";
                break;
        }
    }
}
