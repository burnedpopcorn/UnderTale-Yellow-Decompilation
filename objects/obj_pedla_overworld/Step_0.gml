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
                message[0] = "* Why hello! Hope you're having#  a glorious day!";
                message[1] = "* I'd give you a flower but#  those are in low supply around#  here.";
                message[2] = "* I hope a friendly smile#  suffices!";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* Honestly, the Dunes are not#  the best place for my sisters#  and I.";
                message[1] = "* But I feel an obligation to be#  here. You know, to help grow#  the ecosystem.";
                message[2] = "* One day, we'll return this#  place to its former glory!#  Mmhm!";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* I've heard rumors about an#  abandoned greenhouse FILLED#  with flowers.";
                message[1] = "* Not sure how or why such a#  thing would exist but I really#  wanna see it!";
            }
            
            npc_flag += 1;
            break;
        
        case 3:
            with (msg)
            {
                message[0] = "* Remember to give flowers lots#  of love and attention!";
                message[1] = "* They are alive and can teach#  you many things!";
            }
            
            break;
    }
}
