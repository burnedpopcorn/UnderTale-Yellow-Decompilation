if (live_call())
    return global.live_result;

if (!instance_exists(obj_battle_enemy_attack_martlet_ff_2_final_feather) && feather_angle_total >= feather_angle_total_max && no_loop_destroy == false)
{
    alarm[1] = 10;
    no_loop_destroy = true;
}
