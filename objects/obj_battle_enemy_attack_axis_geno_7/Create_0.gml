if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
timer = 0;
bullet_number_max = 3;
bullet_speed = 12;
bullet_distance = 100;
bullet_distance_min = 40;
bullet_number_current = 0;
bullet_attack_dir = irandom_range(1, 360);
bullet_spin_dir = choose(-1, 1);
attack_count = 3;
scr_enable_battle_box_surface();
