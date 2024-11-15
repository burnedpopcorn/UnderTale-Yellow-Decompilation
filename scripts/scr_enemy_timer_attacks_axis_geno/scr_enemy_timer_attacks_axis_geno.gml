function scr_enemy_timer_attacks_axis_geno()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (!instance_exists(obj_attack_cycler_axis_geno))
        instance_create(0, 0, obj_attack_cycler_axis_geno);
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Axis Geno At 1" && !instance_exists(obj_battle_enemy_attack_axis_geno_1))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_geno_1);
        }
        else if (enemy_attack == "Axis Geno At 2" && !instance_exists(obj_battle_enemy_attack_axis_geno_2))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_geno_2);
        }
        else if (enemy_attack == "Axis Geno At 3" && !instance_exists(obj_battle_enemy_attack_axis_geno_3))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_geno_3);
        }
        else if (enemy_attack == "Axis Geno At 4" && !instance_exists(obj_battle_enemy_attack_axis_geno_4))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_geno_4);
        }
        else if (enemy_attack == "Axis Geno At 5" && !instance_exists(obj_battle_enemy_attack_axis_geno_5))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_geno_5);
        }
        else if (enemy_attack == "Axis Geno At 6" && !instance_exists(obj_battle_enemy_attack_axis_geno_6))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_geno_6);
        }
        else if (enemy_attack == "Axis Geno At 7" && !instance_exists(obj_battle_enemy_attack_axis_geno_7))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_geno_7);
        }
        else if (enemy_attack == "Axis Geno At 8" && !instance_exists(obj_battle_enemy_attack_axis_geno_8))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_geno_8);
        }
        else if (enemy_attack == "Axis Geno At 9" && !instance_exists(obj_battle_enemy_attack_axis_geno_9))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_geno_9);
        }
        else if (enemy_attack == "Axis Geno At 10" && !instance_exists(obj_battle_enemy_attack_axis_geno_10))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_geno_10);
        }
        else if (enemy_attack == "Guardener No Attack")
        {
            with (obj_dialogue_box_battle_transformation_any)
                event_user(0);
        }
    }
}
