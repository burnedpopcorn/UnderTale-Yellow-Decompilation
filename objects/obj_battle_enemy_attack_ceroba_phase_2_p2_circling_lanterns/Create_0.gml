if (live_call())
    return global.live_result;

battle_box = 3154;
bullet_number_max = 3;
bullet_number_current = 0;
bullet_speed = 2;

if (global.hotland_flag[2] == 2)
{
    bullet_speed = 3;
    bullet_number_max = 3;
}

if (global.hotland_flag[2] == 3)
{
    bullet_speed = 4;
    bullet_number_max = 4;
}

bullet_distance = 120;
attack_dir = 90;
timer = 0;
