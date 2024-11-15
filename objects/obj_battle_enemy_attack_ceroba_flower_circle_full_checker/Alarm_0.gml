if (live_call())
    return global.live_result;

if (attack_stop)
    exit;

instance_create_depth(0, 0, -100, obj_battle_enemy_attack_ceroba_flower_circle_full_spawner);
alarm[0] = spawn_offset;
