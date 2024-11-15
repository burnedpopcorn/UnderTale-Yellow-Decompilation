if (instance_exists(obj_battle_enemy_attack_bowll_silverware_all))
{
    with (obj_battle_enemy_attack_bowll_silverware_all)
        instance_destroy();
}

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
