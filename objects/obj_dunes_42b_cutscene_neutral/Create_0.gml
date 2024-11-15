if (global.route != 1 || global.dunes_flag[24] == 1 || global.dunes_flag[36] != 0)
{
    instance_destroy();
    exit;
}

scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
obj_pl.direction = 90;
