if (live_call())
    return global.live_result;

if (global.hotland_flag[10] == 0)
    instance_destroy();

scene = 0;
cutscene_timer = 0;
