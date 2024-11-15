event_inherited();

if (interact == 1)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
                message[0] = "* Sorry kid, I ain't got time to#  chat right now...";
            
            break;
    }
}
