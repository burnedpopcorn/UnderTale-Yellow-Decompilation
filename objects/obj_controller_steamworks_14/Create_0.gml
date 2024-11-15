if (global.route == 3 && global.sworks_flag[3] < 3)
    global.sworks_flag[3] = 3;

if (global.sworks_flag[3] >= 3)
{
    instance_destroy();
    exit;
}

scene = 0;
cutscene_timer = 0;
draw_alpha = 1;
footstep_counter = 4;
alarm[0] = 30;
