if (global.sworks_flag[18] == 1 || global.route != 2)
{
    instance_destroy();
    exit;
}

global.cutscene = true;
cutscene_timer = 0;
scene = 0;
