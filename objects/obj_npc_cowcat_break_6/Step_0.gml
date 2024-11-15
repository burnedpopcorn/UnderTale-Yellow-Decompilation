event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    if (global.dunes_flag[24] == 1)
    {
        switch (npc_flag)
        {
            case 0:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* Howdy, Deputy!";
                    message[1] = "* You are the deputy, right?";
                    message[2] = "* I heard the squad got real#  peeved off after learning#  that.";
                    message[3] = "* Nyahaha! Don't worry, I#  believe in you!";
                }
                
                npc_flag = 1;
                break;
            
            case 1:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* Nyahaha!";
                }
                
                break;
        }
    }
    
    if (global.dunes_flag[24] == 2)
    {
        switch (npc_flag)
        {
            case 0:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* Howdy, Deputy.\t";
                    message[1] = "* I'm real worried! Worried#  sick!\t";
                    message[2] = "* No one can find the Sheriff!#  Nyo one at all!\t";
                    message[3] = "* He's gonna return soon, right?#  He's gotta!";
                }
                
                npc_flag = 1;
                break;
            
            case 1:
                with (msg)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* Nyohoho.";
                }
                
                break;
        }
    }
}
