function scr_enemy_timer_attacks_ceroba_genocide()
{
    var enemy_attack = global.enemy_attack;
    
    if (!instance_exists(obj_attack_cycler_ceroba))
        instance_create(0, 0, obj_attack_cycler_ceroba);
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Ceroba Opener" && !instance_exists(obj_battle_enemy_attack_ceroba_opener_checker))
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_opener_checker);
        
        if (enemy_attack == "Ceroba Fire Circle" && !instance_exists(obj_battle_enemy_attack_ceroba_fire_circle_checker))
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_fire_circle_checker);
        else if (enemy_attack == "Ceroba Flower Spiral" && !instance_exists(obj_battle_enemy_attack_ceroba_flower_spiral_checker))
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_flower_spiral_checker);
        else if (enemy_attack == "Ceroba Flower Barrage" && !instance_exists(obj_battle_enemy_attack_ceroba_flower_barrage_checker))
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_flower_barrage_checker);
        else if (enemy_attack == "Ceroba Flower Spray" && !instance_exists(obj_battle_enemy_attack_ceroba_flower_spray_checker))
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_flower_spray_checker);
        else if (enemy_attack == "Ceroba Jumping Flowers" && !instance_exists(obj_battle_enemy_attack_ceroba_jumping_flowers_checker))
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_jumping_flowers_checker);
        else if (enemy_attack == "Ceroba Split Attack" && !instance_exists(obj_battle_enemy_attack_ceroba_split_attack_checker))
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_split_attack_checker);
        else if (enemy_attack == "Ceroba Diamond Attack" && !instance_exists(obj_battle_enemy_attack_ceroba_diamond_attack_checker))
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_diamond_attack_checker);
        else if (enemy_attack == "Ceroba Diamond Circle" && !instance_exists(obj_battle_enemy_attack_ceroba_arc_checker))
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_arc_checker);
        else if (enemy_attack == "Ceroba Pillars G" && !instance_exists(obj_battle_enemy_attack_ceroba_pillars))
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_pillars);
        else if (enemy_attack == "Ceroba Phase Switcher" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_switcher))
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_phase_switcher);
    }
}
