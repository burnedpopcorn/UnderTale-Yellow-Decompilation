if (live_call())
    return global.live_result;

bullet_number_max = 8;
bullet_number_current = 0;
bullet_speed = 10;
attack_dir = irandom_range(0, 360);
timer = 0;
