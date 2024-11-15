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
                message[0] = "* Sorry, can't talk long. I'm#  preparing for harvest.";
                message[1] = "* (Must be one of those Wild#  East folk.)";
                message[2] = "* Huh? No, I didn't say#  anything.";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* Have you been to Snowdin?";
                message[1] = "* I've heard rumors of our crops#  being cultivated around those#  parts.";
                message[2] = "* I'm thinking of opening up an#  investigation soon.";
                message[3] = "* I'm not bored or anything,#  just wanna protect the#  business.";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* Don't you have role-playing to#  do or something?";
                message[1] = "* Shootouts? Inconveniencing#  pedestrians? That's all bro#  does after all.";
                message[2] = "* He's always up to something;#  having fun while I'm stuck with#  the farm work...";
                message[3] = "* Ugh.";
            }
            
            npc_flag += 1;
            break;
        
        case 3:
            with (msg)
                message[0] = "* Go on. I have work to do.";
            
            break;
    }
}
