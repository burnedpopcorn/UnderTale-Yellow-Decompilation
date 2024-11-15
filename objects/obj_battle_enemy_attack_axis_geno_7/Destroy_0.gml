if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_axis_turret_circling_geno)
    instance_destroy();

with (obj_battle_enemy_attack_axis_turret_bullet_geno)
    instance_destroy();

with (obj_battlebox_controller_axis)
    event_user(0);
