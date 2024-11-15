switch (scene)
{
    case 0:
        if (keyboard_multicheck_pressed(0) && scr_interact() && obj_pl.direction == 90)
            cutscene_advance();
        
        break;
    
    case 1:
        if (global.sworks_flag[36] < 1)
        {
            obj_factory_02_controller.scene++;
        }
        else if (global.sworks_flag[36] >= 1)
        {
            cutscene_dialogue_special("swirl", 65280);
            
            with (msg)
            {
                message[0] = "* I appreciate your eagerness to#  help but this job is done!";
                message[1] = "* Don't you worry, there is#  plenty more to do elsewhere!\t";
                message[2] = "* We reside in an industrial#  buffet of endless labor!!!";
                position = 0;
            }
            
            exit;
        }
        
        cutscene_advance();
        break;
    
    case 2:
        scene = 0;
        break;
}
