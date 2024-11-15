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
                message[0] = "* Hey, thanks for saving me back#  there!";
                message[1] = "* Now I can stand in place at a#  higher elevation.";
            }
            
            can_talk = false;
            npc_flag++;
            break;
        
        case 1:
            with (msg)
                message[0] = "* Work is rad.";
            
            can_talk = false;
            break;
    }
}
