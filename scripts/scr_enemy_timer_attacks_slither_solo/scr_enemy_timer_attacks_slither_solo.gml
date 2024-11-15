function scr_enemy_timer_attacks_slither_solo()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Slither Pottery" && !instance_exists(obj_battle_enemy_attack_slither_pottery_generator))
            instance_create(0, 0, obj_battle_enemy_attack_slither_pottery_generator);
        else if (enemy_attack == "Slither Snake" && !instance_exists(obj_battle_enemy_attack_slither_snake_generator))
            instance_create(0, 0, obj_battle_enemy_attack_slither_snake_generator);
    }
}
