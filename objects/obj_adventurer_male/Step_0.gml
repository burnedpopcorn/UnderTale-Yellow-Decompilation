var geno_snowdin;

event_inherited();
geno_snowdin = false;

if (global.geno_complete[2])
    geno_snowdin = true;

if (interact)
{
    scr_text();
    is_talking = true;
    
    if (global.snowdin_flag[1] == 2 && npc_flag < 5)
        npc_flag = 5;
    
    with (msg)
    {
        portrait = false;
        sndfnt = 99;
        
        if (global.route == 3 || geno_snowdin)
        {
            if (geno_snowdin == false)
            {
                message[0] = "* I'm starting to have second#  thoughts about this as a#  honeymoon spot.";
                message[1] = "* It doesn't really feel safe.";
                message[2] = "* I can't tell my wife though. It#  would just upset her.";
            }
            else
            {
                switch (other.npc_flag)
                {
                    case 0:
                        message[0] = "* You stayed behind too?";
                        message[1] = "* I lost my wife in the#  commotion.";
                        message[2] = "* This was the last place I saw#  her.";
                        other.npc_flag = 1;
                        break;
                    
                    case 1:
                        message[0] = "* I hope she's doing alright.";
                        break;
                }
            }
        }
        else
        {
            switch (other.npc_flag)
            {
                case 0:
                    message[0] = "* We're not lost.";
                    message[1] = "* I know exactly where we#  are.";
                    other.npc_flag = 1;
                    break;
                
                case 1:
                    message[0] = "* We're not lost.";
                    message[1] = "* We're in Snowdin.";
                    message[2] = "* Snowdin isn't that big.";
                    other.npc_flag = 2;
                    break;
                
                case 2:
                    message[0] = "* We're not lost.";
                    message[1] = "* We can't be lost.";
                    message[2] = "* It's our honeymoon.";
                    message[3] = "* It's gotta be perfect, right?";
                    other.npc_flag = 3;
                    break;
                
                case 3:
                    message[0] = "* We can't be lost.";
                    message[1] = "* That would be a terrible#  honeymoon.";
                    message[2] = "* A bad honeymoon means a bad#  marriage.";
                    message[3] = "* That can't happen. I can't be#  a bad husband.";
                    message[4] = "* I won't let that happen.";
                    message[5] = "* I won't let my new wife have#  a bad honeymoon.";
                    message[6] = "* We can't be lost";
                    other.npc_flag = 4;
                    break;
                
                case 4:
                    message[0] = "* We can't be lost.";
                    message[1] = "* She can't know we're#  lost, okay?";
                    break;
                
                case 5:
                    message[0] = "* Thank you for the map!";
                    message[1] = "* We didn't need it though.";
                    message[2] = "* I had everything under control,#  I swear.";
                    other.npc_flag = 6;
                    break;
                
                case 6:
                    message[0] = "* Staying here a little longer#  won't hurt.";
                    message[1] = "* It's quite beautiful.";
                    break;
            }
        }
    }
}
