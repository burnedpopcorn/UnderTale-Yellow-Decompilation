if (instance_exists(obj_battle_enemy_attack_tellyvis_tape))
{
    with (obj_battle_enemy_attack_tellyvis_tape)
        instance_destroy();
}

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
