if (instance_exists(obj_battle_enemy_attack_flowergirls_falling_flowers_flower))
{
    with (obj_battle_enemy_attack_flowergirls_falling_flowers_flower)
        instance_destroy();
}

if (instance_exists(obj_battle_enemy_attack_flowergirls_falling_flowers_flower_green))
{
    with (obj_battle_enemy_attack_flowergirls_falling_flowers_flower_green)
        instance_destroy(obj_battle_enemy_attack_flowergirls_falling_flowers_flower_green, false);
}

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
