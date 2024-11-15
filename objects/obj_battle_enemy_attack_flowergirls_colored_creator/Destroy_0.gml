if (instance_exists(obj_battle_enemy_attack_flowergirls_colored_blue))
{
    with (obj_battle_enemy_attack_flowergirls_colored_blue)
        instance_destroy();
}

if (instance_exists(obj_battle_enemy_attack_flowergirls_colored_orange))
{
    with (obj_battle_enemy_attack_flowergirls_colored_orange)
        instance_destroy();
}

if (instance_exists(obj_battle_enemy_attack_flowergirls_colored_base))
{
    with (obj_battle_enemy_attack_flowergirls_colored_base)
        instance_destroy();
}

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
