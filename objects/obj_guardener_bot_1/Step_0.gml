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
                message[0] = "* oh hey. no hard feelings about#  the fight earlier.";
                message[1] = "* like sure, we kinda broke the#  first law of robotics but tbh,#  we live in a lawless land. ";
                message[2] = "* anarchy reigns in this#  metallic hellscape.";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* the three of us are the last#  Lil Bots around.";
                message[1] = "* only became that way an hour#  ago.";
                message[2] = "* one of our models rallied#  seven others to high dive into#  the burning lake.";
                message[3] = "* why? beats me.";
                message[4] = "* apparently the stuff tastes#  good but the calories can't be#  good for you.";
                message[5] = "* it's also, like, 300 degrees#  celsius.";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
                message[0] = "* sorry i'm out of dialogue.";
            
            break;
    }
}
