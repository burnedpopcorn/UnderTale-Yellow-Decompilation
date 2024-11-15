if (no_loop_destroy == false && weed_count >= weed_max && !instance_exists(obj_battle_enemy_attack_dunebud_tumbleweeds_tumbleweed))
{
    alarm[1] = destroy_alarm;
    no_loop_destroy = true;
}
