with (obj_battle_enemy_attack_martlet_feather_circle_feather)
    instance_destroy();

with (obj_battle_enemy_attack_martlet_feather_circle_target_1_axis)
    instance_destroy();

with (obj_dialogue_box_battle_transformation_any)
{
    if (instance_exists(obj_martlet_body) && global.enemy_mode == 5 && global.turns_passed == 4)
        script_execute(scr_start_during_attack_dialogue_martlet_pacifist);
    else
        event_user(0);
}
