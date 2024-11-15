if (global.dunes_flag[41] >= 5)
{
    instance_destroy();
    exit;
}

if (global.dunes_flag[41] >= 3)
{
    scene = 11;
    exit;
}

scene = 0;
cutscene_timer = 0;
scr_cutscene_start();
