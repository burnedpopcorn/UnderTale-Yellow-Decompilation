if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_axis_bomb_geno)
    instance_destroy(id, false);

with (obj_battle_enemy_attack_axis_beams)
    instance_destroy();

with (obj_battle_enemy_attack_axis_energy_ball_boss_geno)
    instance_destroy();

with (obj_battlebox_controller_axis)
    event_user(0);