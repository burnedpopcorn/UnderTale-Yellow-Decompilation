var battle_box, y_target;

if (live_call())
    return global.live_result;

battle_box = 3154;

switch (scene)
{
    case -1:
        break;
    
    case 0:
        y_target = battle_box.bbox_top + 30;
        y = lerp(y, y_target, 0.15);
        
        if (abs(y - y_target) < 0.1)
        {
            scene++;
            y = y_target;
        }
        
        break;
    
    case 1:
        cutscene_wait(loop_duration);
        break;
    
    case 2:
        vspeed += 1;
        
        if (y > (battle_box.bbox_bottom + 20))
            instance_destroy();
        
        break;
}
