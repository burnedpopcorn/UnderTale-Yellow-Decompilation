if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        with (obj_flowey_battle_phase_2_gray_pellet)
        {
            if (image_alpha < 1)
                exit;
            
            alarm[0] = 999;
        }
        
        scene++;
        break;
    
    case 1:
        cutscene_wait(0.5);
        break;
    
    case 2:
        with (obj_flowey_battle_phase_2_gray_pellet)
        {
            if (speed < 8)
                speed += 0.2;
            
            alarm[0] = 50;
        }
        
        cutscene_wait(4);
        break;
    
    case 3:
        instance_destroy();
        break;
}
