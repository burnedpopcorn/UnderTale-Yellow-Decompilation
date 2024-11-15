scene = 0;
cutscene_timer = 0;

if (global.route != 2)
{
    if (global.sworks_flag[6] == 0)
        scene = 6;
}

if (global.sworks_flag[6] == 1)
    obj_pl.direction = 270;
