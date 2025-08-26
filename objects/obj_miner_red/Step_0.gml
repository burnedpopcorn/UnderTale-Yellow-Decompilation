event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* ...";
                message[1] = "* ...";
                message[2] = "* ...";
                message[3] = "* Bruh...";
            }
            
            break;
    }
}
