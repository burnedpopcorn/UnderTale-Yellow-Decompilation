function scr_enemy_timer_attacks_jandroid_solo()
{
    var enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Slippery Floor" && !instance_exists(obj_battle_enemy_attack_jandroid_slippery_floor_generator))
            instance_create(0, 0, obj_battle_enemy_attack_jandroid_slippery_floor_generator);
        else if (enemy_attack == "Garbage Cans" && !instance_exists(obj_battle_enemy_attack_jandroid_garbage_cans_generator))
            instance_create(0, 0, obj_battle_enemy_attack_jandroid_garbage_cans_generator);
        else if (enemy_attack == "Spray Bottle" && !instance_exists(obj_battle_enemy_attack_spray_bottle))
            instance_create(440, 300, obj_battle_enemy_attack_spray_bottle);
    }
}
