if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
cutscene_music = 0;

if (global.sworks_flag[31] >= 4)
{
    instance_destroy();
    exit;
}
