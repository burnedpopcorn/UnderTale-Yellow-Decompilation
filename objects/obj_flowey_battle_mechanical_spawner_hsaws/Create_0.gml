var side, saw_speed;

if (live_call())
    return global.live_result;

side = choose(-1, 1);
yy[0] = 320;
yy[1] = 380;
yy[2] = 440;
saw_speed = 12;

switch (side)
{
    case -1:
        xx[0] = -30;
        xx[1] = 670;
        spd[0] = saw_speed;
        spd[1] = -saw_speed;
        break;
    
    case 1:
        xx[1] = -30;
        xx[0] = 670;
        spd[1] = saw_speed;
        spd[0] = -saw_speed;
        break;
}

instance_create_depth(clamp(xx[0], 40, 600), clamp(yy[0], 40, 440), -100, obj_flowey_battle_mechanical_saw_warning);
instance_create_depth(clamp(xx[1], 40, 600), clamp(yy[1], 40, 440), -100, obj_flowey_battle_mechanical_saw_warning);
instance_create_depth(clamp(xx[0], 40, 600), clamp(yy[2], 40, 440), -100, obj_flowey_battle_mechanical_saw_warning);
alarm[0] = 17;
