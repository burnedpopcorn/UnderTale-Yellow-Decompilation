switch (scene)
{
    case 0:
        cutscene_wait(1.5);
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            
            if (global.sworks_flag[12] == 0)
            {
                if (global.route == 2)
                {
                    message[0] = "* STAY HERE WHILE I GET#  THE TALL LADY.";
                    message[1] = "* DO NOT TOUCH ANYTHING.";
                    prt[0] = 473;
                    prt[1] = 473;
                }
                else
                {
                    message[0] = "* STAY HERE, I MUST GO#  BACK ON PATROL.";
                    message[1] = "* DO NOT TOUCH ANYTHING.";
                    prt[0] = 473;
                    prt[1] = 473;
                }
            }
            else
            {
                message[0] = "* DO YOU HAVE THE ABILITY#  TO COOPERATE?";
                message[1] = "* OR ARE YOU TOYING WITH#  ME ON PURPOSE?";
                message[2] = "* EITHER WAY, I AM#  STARTING TO [really]#  HATE YOU.";
                prt[0] = 473;
                prt[1] = 473;
                prt[2] = 473;
            }
        }
        
        break;
    
    case 2:
        cutscene_wait(0.5);
        break;
    
    case 3:
        cutscene_npc_walk(1166, 160, 345, 3, "y", "down");
        break;
    
    case 4:
        with (obj_axis_npc)
        {
            if (image_alpha > 0)
            {
                image_alpha -= 0.2;
            }
            else
            {
                instance_destroy();
                other.scene++;
            }
        }
        
        break;
    
    case 5:
        cutscene_sfx_play(384, 1);
        break;
    
    case 6:
        cutscene_wait(0.5);
        break;
    
    case 7:
        cutscene_end();
        
        if (global.sworks_flag[12] == 0)
            global.sworks_flag[12] = 1;
        
        break;
}
