if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_axis_geno_energy_ball_pulse)
    instance_destroy();

with (obj_battlebox_controller_axis)
    event_user(0);
