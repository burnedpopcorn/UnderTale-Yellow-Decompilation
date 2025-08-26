if (live_call())
    return global.live_result;

spawn_direction = irandom_range(0, 360);
spawn_distance = 200;
spawn_delay = 20;
spawn_number = 2;
soul = obj_heart_battle_fighting_parent;
alarm[0] = 1;
