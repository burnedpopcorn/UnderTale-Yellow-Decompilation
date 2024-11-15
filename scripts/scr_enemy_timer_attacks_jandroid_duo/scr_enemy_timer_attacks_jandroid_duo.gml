function scr_enemy_timer_attacks_jandroid_duo()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Double Jandroid Gargbage Cans" && !instance_exists(obj_battle_enemy_attack_jandroid_garbage_cans_duo_generator))
            instance_create(0, 0, obj_battle_enemy_attack_jandroid_garbage_cans_duo_generator);
        else if (enemy_attack == "Double Jandroid Slippery Floor" && !instance_exists(obj_battle_enemy_attack_jandroid_slippery_floor_duo_generator))
            instance_create(440, 300, obj_battle_enemy_attack_jandroid_slippery_floor_duo_generator);
        else if (enemy_attack == "Slippery Floor" || enemy_attack == "Garbage Cans" || enemy_attack == "Spray Bottle")
            script_execute(scr_enemy_timer_attacks_jandroid_solo);
    }
}
