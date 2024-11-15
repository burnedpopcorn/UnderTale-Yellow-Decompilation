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
                message[0] = "* Hum-dee-dum!";
                message[1] = "* A few more days of scrubbing#  and this inch of the bridge#  will be spotless!!";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* No offense, but you look like#  you could use a cleaning!";
                message[1] = "* Golly gee! If I weren't on#  duty, I'd help!";
                message[2] = "* What to do? What to do?";
                message[3] = "* Say... mosey on back to the#  generator complex!";
                message[4] = "* You can toss yourself into one#  of the washing#  machines!!!";
                message[5] = "* (Note: You should not toss#  yourself in a washing machine.)";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* You want a sip of my mop#  water???";
                message[1] = "* I know you do!!";
                message[2] = "* Drink up!! DriNk UP!!!";
            }
            
            npc_flag += 1;
            break;
        
        case 3:
            with (msg)
                message[0] = "* Hum-dee-dum!";
            
            break;
    }
}

image_speed = 1;
