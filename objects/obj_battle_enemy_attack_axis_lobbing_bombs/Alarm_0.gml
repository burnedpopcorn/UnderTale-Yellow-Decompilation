if (live_call())
    return global.live_result;

bomb_side *= -1;
instance_create_depth(battle_box.x + (bomb_side * 100), irandom_range(battle_box.bbox_top, battle_box.bbox_bottom), -100, obj_battle_enemy_attack_axis_bomb_1);
alarm[0] = attack_interval;
