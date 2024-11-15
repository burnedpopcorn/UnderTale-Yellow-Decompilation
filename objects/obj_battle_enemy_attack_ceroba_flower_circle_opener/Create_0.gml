if (live_call())
    return global.live_result;

bullet_number_max = 12;
bullet_number_current = 0;
bullet_speed = 6;
attack_dir = irandom_range(0, 360);
timer = 0;
scene = 0;
cutscene_timer = 0;
_speed_perc = 1;
hint_alpha = 0;
hint_draw = false;

if (!instance_exists(obj_ceroba_transform_slowdown))
    instance_create_depth(0, 0, -10000, obj_ceroba_transform_slowdown);
