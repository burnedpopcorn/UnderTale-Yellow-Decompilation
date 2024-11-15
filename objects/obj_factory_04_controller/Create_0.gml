scene = 0;
cutscene_timer = 0;
cutscene_music = 0;

if (global.sworks_flag[38] == 1)
    scene = 10;

if (global.sworks_flag[38] >= 2)
    instance_destroy();

draw_alpha = 0;
