if (instance_exists(obj_battle_enemy_attack_cactony_needle_side_needle))
{
    with (obj_battle_enemy_attack_cactony_needle_side_needle)
        instance_destroy();
}

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
