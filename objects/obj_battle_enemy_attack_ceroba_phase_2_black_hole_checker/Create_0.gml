var battle_box, warning;

if (live_call())
    return global.live_result;

battle_box = 3154;
warning = instance_create_depth(battle_box.x, battle_box.y, -9999, obj_battle_enemy_attack_ceroba_barrage_warning);
warning.repeat_count = 2;
