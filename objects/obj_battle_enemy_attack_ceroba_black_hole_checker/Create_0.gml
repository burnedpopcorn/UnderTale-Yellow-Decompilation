if (live_call())
    return global.live_result;

counter_current = 0;
counter_max = 240;
bullet_number = 6;
spawn_delay = 22;
instance_create(320, 320, obj_battle_enemy_attack_ceroba_barrage_warning);
