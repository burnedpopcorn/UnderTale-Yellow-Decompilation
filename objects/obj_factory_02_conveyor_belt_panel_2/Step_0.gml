switch (scene)
{
    case 0:
        if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
        {
            if (global.sworks_flag[36] == 2)
            {
                cutscene_dialogue_special("swirl", 65280);
                
                with (msg)
                {
                    message[0] = "* Remember, the passcode is#  " + global.factory_code + ".";
                    position = 0;
                }
                
                break;
            }
            else
            {
                scr_text();
                
                with (msg)
                    message[0] = "* No response.";
            }
        }
        
        break;
    
    case 1:
        scene = 0;
        break;
}
