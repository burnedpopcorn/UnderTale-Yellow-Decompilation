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
                message[0] = "* There is a torch on one side...";
                message[1] = "* But not on the other...";
                message[2] = "* The feng shui of this place is#  terrible.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Wait...";
                message[1] = "* WHAT IF THERE IS A DEEPER#  MEANING TO IT?";
                message[2] = "* THE TORCH IS A METAPHOR FOR THE#  INCOMPLETE NATURE OF LIFE.";
                message[3] = "* I'LL NEVER LOOK AT THE#  UNDERGROUND THE SAME WAY AGAIN.";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* HNNNNGGGGHHHHH";
            }
            
            break;
    }
}
