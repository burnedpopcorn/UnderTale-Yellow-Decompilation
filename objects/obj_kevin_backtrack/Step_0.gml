event_inherited();

if (interact && !can_talk)
{
    can_talk = true;
    is_talking = 1;
    scr_text();
}

if (can_talk)
{
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* I got put on minecart duty a#  few minutes ago.";
                message[1] = "* Sure, you already completed#  today's job but tomorrow's#  coming!";
                message[2] = "* First I get tied down to#  tracks, now I gotta operate#  tracks!";
                message[3] = "* This wasn't what I meant by#  wanting to get my life back on#  track!!!";
            }
            
            can_talk = false;
            npc_flag++;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* You're gonna show up tomorrow#  to do this for me, right?";
                message[1] = "* We're best buds... right?";
                message[2] = "* DID OUR INTIMATE ELEVATOR RIDE#  MEAN NOTHING???";
            }
            
            can_talk = false;
            npc_flag++;
            break;
        
        case 2:
            with (msg)
                message[0] = "* Sorry, can't talk anymore.#  I've got everything to#  overthink.";
            
            can_talk = false;
            break;
    }
}
