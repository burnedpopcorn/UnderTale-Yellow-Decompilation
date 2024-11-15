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
                message[0] = "* This whole situation is#  terrible.";
                message[1] = "* It's too depressing to play#  music now.";
                message[2] = "* I hope everyone's okay.";
                other.npc_flag += 1;
                break;
            
            case 1:
                message[0] = "* We probably should've left#  with the others but Rodney#  insisted we stay.";
                message[1] = "* Think he's in denial or#  something...";
                break;
        }
    }
}
