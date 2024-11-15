if (attack_number > 0)
{
    instance_create_depth(0, 0, -1000, obj_battle_enemy_attack_tellyvis_tape);
    attack_number -= 1;
    alarm[0] = attack_interval;
}
else
{
    instance_destroy();
}
