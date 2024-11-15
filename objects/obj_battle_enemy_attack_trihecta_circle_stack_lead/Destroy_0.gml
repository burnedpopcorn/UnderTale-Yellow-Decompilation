if (instance_exists(obj_battle_enemy_attack_trihecta_circle_stack_white))
{
    with (obj_battle_enemy_attack_trihecta_circle_stack_white)
        instance_destroy();
}

if (instance_exists(obj_battle_enemy_attack_trihecta_circle_stack_green))
{
    with (obj_battle_enemy_attack_trihecta_circle_stack_green)
        instance_destroy();
}

ds_list_destroy(x_list);
ds_list_destroy(y_list);
