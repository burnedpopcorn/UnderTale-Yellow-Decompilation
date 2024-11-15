if (instance_exists(obj_battle_enemy_attack_dunebud_sandcastle_bucket))
{
    with (obj_battle_enemy_attack_dunebud_sandcastle_bucket)
        instance_destroy();
}

if (instance_exists(obj_battle_enemy_attack_dunebud_sandcastle_arrow))
{
    with (obj_battle_enemy_attack_dunebud_sandcastle_arrow)
        instance_destroy();
}

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
