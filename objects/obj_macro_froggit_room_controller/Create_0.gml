if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;

if (global.sworks_flag[60] == 1)
{
    instance_create_depth(140, 140, 0, obj_macro_froggit_chest);
    instance_destroy();
    exit;
}
