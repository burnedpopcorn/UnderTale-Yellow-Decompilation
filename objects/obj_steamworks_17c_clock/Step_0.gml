event_inherited();

if (interact)
{
    scr_text();
    is_talking = true;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Tick-tock - tick-tock -#  tick-tock...";
                message[1] = "* The current time is 6:26,#  Monday morning!";
                message[2] = "* You may have noticed the#  apple trees outside the#  Steamworks are blooming.";
                message[3] = "* That means Spring is upon us! ";
                message[4] = "* This time of year, my creator#  recommends a picnic by the#  river just south of here!";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* Why the puzzled look? Have we#  not met before?";
                message[1] = "* I am the Grandfather Clock of#  the Underground!";
                message[2] = "* It is my responsibility to#  keep the standard time for all#  monsters.";
                message[3] = "* However, I cannot help but#  feel there is a miscalculation#  in my tick-tocking.";
                message[4] = "* It is simply driving me mad!";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* I do not sense the gears#  turning within these walls.";
                message[1] = "* Hm, yes, I believe the main#  clock face outside has stalled!";
                message[2] = "* An engineer should arrive to#  fix it soon.";
                message[3] = "* Do not worry, I will continue#  to keep the time!";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
                message[0] = "* Tick-tock - tick-tock -#  tick-tock...";
            
            break;
    }
}
