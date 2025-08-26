if (live_call())
    return global.live_result;

time_elapsed = 0;
target_current += 1;
can_rotate = false;
no_loop_rotate = false;
var _target_max = target_max;

if (instance_exists(obj_wild_revolver_circle_multi))
    _target_max -= (obj_wild_revolver_circle_multi.circle_count - 1);

if (target_current < _target_max)
{
    var target_circle;
    
    if (instance_exists(obj_wild_revolver_circle_multi))
    {
        if (!instance_exists(obj_wild_revolver_circle_multi_pre))
        {
            target_circle = instance_create(319, 319 - target_radius, obj_wild_revolver_circle_multi_pre);
            multishot_id = target_circle;
            target_circle.circle_count = obj_wild_revolver_circle_multi.circle_count;
            
            with (target_circle)
                event_user(1);
        }
        else
        {
            exit;
        }
    }
    else
    {
        target_circle = instance_create(319, 319 - target_radius, obj_wild_revolver_circle_pre);
    }
    
    with (target_circle)
    {
    }
}
else if (instance_exists(obj_target_bar_battle))
{
    with (obj_target_bar_battle)
        can_execute = true;
    
    multishot_id = obj_target_bar_battle;
}
