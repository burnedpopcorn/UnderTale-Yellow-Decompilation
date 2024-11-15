if (live_call())
    return global.live_result;

instance_destroy(obj_battle_enemy_attack_axis_turret_twinkle_2);
instance_destroy(obj_battle_enemy_attack_axis_turret_2);
instance_destroy(obj_battle_enemy_attack_axis_turret_bullet);

with (obj_battlebox_controller_axis)
    event_user(0);
