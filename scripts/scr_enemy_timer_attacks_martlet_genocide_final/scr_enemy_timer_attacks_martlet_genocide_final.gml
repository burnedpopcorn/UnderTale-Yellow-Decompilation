function scr_enemy_timer_attacks_martlet_genocide_final()
{
    var enemy_attack = global.enemy_attack;
    
    if (!instance_exists(obj_attack_cycler_martlet_final))
        instance_create(0, 0, obj_attack_cycler_martlet_final);
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Talon Scratch" && !instance_exists(obj_fmartlet_spawner_talon_scratch))
        {
            instance_create(0, 0, obj_fmartlet_spawner_talon_scratch);
        }
        else if (enemy_attack == "Splitting Feathers" && !instance_exists(obj_fmartlet_spawner_splitting_feathers))
        {
            instance_create(0, 0, obj_fmartlet_spawner_splitting_feathers);
        }
        else if (enemy_attack == "Splitting Feathers + Talon Scratch" && !instance_exists(obj_fmartlet_spawner_feathers_scratch))
        {
            instance_create(0, 0, obj_fmartlet_spawner_feathers_scratch);
        }
        else if (enemy_attack == "Splitting Feathers + Martlet Wings" && !instance_exists(obj_fmartlet_spawner_feathers_wings))
        {
            instance_create(0, 0, obj_fmartlet_spawner_feathers_wings);
        }
        else if (enemy_attack == "Talon Scratch + Martlet Wings" && !instance_exists(obj_fmartlet_spawner_wings_scratch))
        {
            instance_create(0, 0, obj_fmartlet_spawner_wings_scratch);
        }
        else if (enemy_attack == "Martlet Feather Circle Final" && !instance_exists(obj_battle_enemy_attack_martlet_feather_circle_final_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_martlet_feather_circle_final_checker);
        }
        else if (enemy_attack == "Martlet Glass" && !instance_exists(obj_fmartlet_spawner_martlet_glass))
        {
            instance_create(0, 0, obj_fmartlet_spawner_martlet_glass);
        }
        else if (enemy_attack == "Martlet Wings" && !instance_exists(obj_fmartlet_spawner_wings))
        {
            instance_create(0, 0, obj_fmartlet_spawner_wings);
        }
        else if (enemy_attack == "Martlet Talon Walls" && !instance_exists(obj_fmartlet_spawner_talon_walls))
        {
            instance_create(0, 0, obj_fmartlet_spawner_talon_walls);
        }
        else if (enemy_attack == "Wing Gust Final" && !instance_exists(obj_battle_enemy_attack_martlet_wing_gust_final_spawner))
        {
            instance_create(0, 0, obj_battle_enemy_attack_martlet_wing_gust_final_spawner);
        }
        else if (enemy_attack == "Martlet Blocks" && !instance_exists(obj_fmartlet_spawner_blocks_1))
        {
            instance_create(0, 0, obj_fmartlet_spawner_blocks_1);
        }
        else if (enemy_attack == "Martlet Blocks 2" && !instance_exists(obj_fmartlet_spawner_blocks_2))
        {
            instance_create(0, 0, obj_fmartlet_spawner_blocks_2);
        }
        else if (enemy_attack == "Martlet Gauntlet 1" && !instance_exists(obj_fmartlet_spawner_gauntlet))
        {
            instance_create(0, 0, obj_fmartlet_spawner_gauntlet);
        }
        else if (enemy_attack == "Martlet Gauntlet 2" && !instance_exists(obj_fmartlet_spawner_gauntlet))
        {
            var inst = instance_create(0, 0, obj_fmartlet_spawner_gauntlet);
            inst.attack_variant = 1;
        }
        else if (enemy_attack == "Martlet Final Opener" && !instance_exists(obj_fmartlet_spawner_opener))
        {
            instance_create(0, 0, obj_fmartlet_spawner_opener);
        }
        else if (enemy_attack == "Martlet Final 2 Opener" && !instance_exists(obj_fmartlet_spawner_opener_2))
        {
            instance_create(0, 0, obj_fmartlet_spawner_opener_2);
        }
        else if (enemy_attack == "Martlet Phase 2 Blocks" && !instance_exists(obj_fmartlet_2_spawner_blocks_1))
        {
            instance_create(0, 0, obj_fmartlet_2_spawner_blocks_1);
        }
        else if (enemy_attack == "Martlet Phase 2 Blocks 2" && !instance_exists(obj_fmartlet_2_spawner_blocks_2))
        {
            instance_create(0, 0, obj_fmartlet_2_spawner_blocks_2);
        }
        else if (enemy_attack == "Martlet Phase 2 Blocks 3" && !instance_exists(obj_fmartlet_2_spawner_blocks_3))
        {
            instance_create(0, 0, obj_fmartlet_2_spawner_blocks_3);
        }
        else if (enemy_attack == "Martlet Phase 2 Blocks 4" && !instance_exists(obj_fmartlet_2_spawner_blocks_4))
        {
            instance_create(0, 0, obj_fmartlet_2_spawner_blocks_4);
        }
        else if (enemy_attack == "Circular Scratch" && !instance_exists(obj_fmartlet_spawner_circular_scratch))
        {
            instance_create(0, 0, obj_fmartlet_spawner_circular_scratch);
        }
        else if (enemy_attack == "Falling Meteors" && !instance_exists(obj_fmartlet_spawner_falling_meteors))
        {
            instance_create(0, 0, obj_fmartlet_spawner_falling_meteors);
        }
        else if (enemy_attack == "Feathers Meteors" && !instance_exists(obj_fmartlet_spawner_feathers_meteors))
        {
            instance_create(0, 0, obj_fmartlet_spawner_feathers_meteors);
        }
        else if (enemy_attack == "Splitting Feathers + Talon Scratch 2" && !instance_exists(obj_fmartlet_spawner_feathers_scratch_2))
        {
            instance_create(0, 0, obj_fmartlet_spawner_feathers_scratch_2);
        }
    }
}
