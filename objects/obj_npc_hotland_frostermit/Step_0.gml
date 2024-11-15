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
                message[0] = "* Hehe!";
                message[1] = "* Gettin' down! Gettin down!";
                break;
        }
    }
}
