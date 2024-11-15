scene = 0;
cutscene_timer = 0;

if (global.sworks_flag[40] >= 1 || global.route != 2)
{
    instance_destroy();
    exit;
}
