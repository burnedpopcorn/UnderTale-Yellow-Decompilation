image_speed = 0;
image_alpha = 0;
effect_counter = irandom_range(30, 45) * 30;

if (global.dunes_flag[53] > 0 || global.dunes_flag[41] < 4 || global.hotland_flag[2] > 0)
{
    instance_destroy();
    exit;
}

if (global.fun_value >= 60 && global.fun_value <= 62)
    exit;

instance_destroy();
