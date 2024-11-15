if (live_call())
    return global.live_result;

instance_destroy(obj_battle_enemy_attack_axis_blue_laser_grid);
instance_destroy(obj_battle_enemy_attack_axis_orange_laser_grid);
instance_destroy(obj_battle_enemy_attack_axis_energy_ball_boss);

with (obj_battlebox_controller_axis)
    event_user(0);
