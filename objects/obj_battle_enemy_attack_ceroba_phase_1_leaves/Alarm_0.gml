var offset;

if (live_call())
    return global.live_result;

offset = random_range(1, 30);
instance_create_depth(choose(battle_box.bbox_left - offset, battle_box.bbox_right + offset), random_range(battle_box.bbox_top + 15, battle_box.bbox_bottom - 15), -100, obj_battle_enemy_attack_ceroba_petal);
alarm[0] = spawn_rate;

if (obj_battle_enemy_attack_ceroba_petal_pile.vspeed == 0)
    obj_battle_enemy_attack_ceroba_petal_pile.vspeed = -(90 / attack_length);
