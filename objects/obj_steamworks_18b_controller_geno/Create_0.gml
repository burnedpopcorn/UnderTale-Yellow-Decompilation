if (live_call())
    return global.live_result;

if (global.sworks_flag[10] >= 2)
{
    instance_destroy();
    exit;
}

scene = -1;
cutscene_timer = 0;
cutscene_music = 0;
subscene = 0;
choice = 0;
