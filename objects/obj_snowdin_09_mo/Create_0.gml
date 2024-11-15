if (global.snowdin_flag[5] == 2 || global.geno_complete[2] || global.dunes_flag[0] > 0)
    instance_destroy();

if (global.snowdin_flag[5] == 1)
{
    x = 160;
    y = 70;
    sprite_index = spr_mo_down_talk_yellow;
    image_speed = 0;
    waiter = 5;
    path_position = 1;
}

slide = 0;
hsp = 0;
mo_change_depth = false;
mo_leave = false;
waiter = 0;
timer[0] = -1;
timer[1] = -1;
timer[2] = -1;
timer[3] = -1;
timer[4] = -1;
