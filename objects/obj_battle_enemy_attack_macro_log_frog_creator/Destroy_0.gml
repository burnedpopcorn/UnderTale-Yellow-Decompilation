if (live_call())
    return global.live_result;

with (obj_bigfrog_log)
    instance_destroy();

with (obj_bigfrog_log_frog)
{
    if (is_green == true)
        global.turns_passed -= 2;
    
    instance_destroy();
}

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
