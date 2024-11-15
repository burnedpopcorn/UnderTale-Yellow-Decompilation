scene = 0;
cutscene_timer = 0;
cutscene_music = 0;

if (global.sworks_flag[40] >= 2 || global.route != 2)
{
    instance_destroy();
    exit;
}
