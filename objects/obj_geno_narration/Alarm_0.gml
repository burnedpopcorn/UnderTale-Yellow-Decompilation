if (live_call())
    return global.live_result;

if (global.hotland_flag[8] >= target_flag)
    instance_destroy();
