function scr_enemy_timer_attacks_asgore()
{
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (!instance_exists(obj_battle_enemy_attack_asgore_checker))
            instance_create(0, 0, obj_battle_enemy_attack_asgore_checker);
    }
}
