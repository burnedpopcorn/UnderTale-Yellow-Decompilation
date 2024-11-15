if (live_call())
    return global.live_result;

if (scene == 0)
{
    scr_cutscene_start();
    scene++;
}
