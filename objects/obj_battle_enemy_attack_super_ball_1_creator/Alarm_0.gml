var battle_box;

if (live_call())
    return global.live_result;

battle_box = 3154;
noloop = true;
instance_create_depth(320, battle_box.bbox_top - 40, -100, obj_battle_enemy_attack_axis_energy_ball_boss_red);
