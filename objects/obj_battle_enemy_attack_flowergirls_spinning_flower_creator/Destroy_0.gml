if (instance_exists(obj_battle_enemy_attack_flowergirls_spinning_flower))
{
    with (obj_battle_enemy_attack_flowergirls_spinning_flower)
        instance_destroy();
}

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
