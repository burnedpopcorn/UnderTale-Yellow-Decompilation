scene = 0;
cutscene_timer = 0;

if (global.hotland_flag[0] == 1)
    scene = 6;

if (global.hotland_flag[0] >= 2 || global.route != 1)
    instance_destroy();
