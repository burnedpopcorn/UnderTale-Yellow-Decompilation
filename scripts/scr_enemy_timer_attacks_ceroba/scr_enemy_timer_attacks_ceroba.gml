function scr_enemy_timer_attacks_ceroba()
{
    var enemy_attack, bell_check;
    
    enemy_attack = global.enemy_attack;
    
    if (!instance_exists(obj_attack_cycler_ceroba_phase_1))
        instance_create(0, 0, obj_attack_cycler_ceroba_phase_1);
    
    bell_check = !instance_exists(obj_ceroba_phase_2_shield) || obj_ceroba_phase_2_shield.fill_percentage < 1;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Ceroba Bells" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_1_bells))
        {
            instance_create(320, 280, obj_battle_enemy_attack_ceroba_phase_1_bells);
        }
        else if (enemy_attack == "Ceroba Bullets" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_1_bullets))
        {
            instance_create(320, 280, obj_battle_enemy_attack_ceroba_phase_1_bullets);
        }
        else if (enemy_attack == "Ceroba Leaves" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_1_leaves))
        {
            instance_create(320, 280, obj_battle_enemy_attack_ceroba_phase_1_leaves);
        }
        else if (enemy_attack == "Ceroba Pillars" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_1_pillars))
        {
            instance_create(320, 280, obj_battle_enemy_attack_ceroba_phase_1_pillars);
        }
        else if (enemy_attack == "Ceroba Staff" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_1_staff))
        {
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_phase_1_staff);
        }
        else if (enemy_attack == "Ceroba Black Hole" && !instance_exists(obj_battle_enemy_attack_ceroba_black_hole_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_black_hole_checker);
        }
        else if (enemy_attack == "Ceroba Diamond Pacifist" && !instance_exists(obj_battle_enemy_attack_ceroba_diamond_attack_checker_pacifist))
        {
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_diamond_attack_checker_pacifist);
        }
        else if (enemy_attack == "Ceroba Flower Circle Pacifist" && !instance_exists(obj_battle_enemy_attack_ceroba_flower_circle_checker_pacifist))
        {
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_flower_circle_checker_pacifist);
        }
        else if (enemy_attack == "Ceroba Rotating Bullets" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_1_rotating_bullets))
        {
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_phase_1_rotating_bullets);
        }
        else if (enemy_attack == "Ceroba Shotgun Pacifist" && !instance_exists(obj_battle_enemy_attack_ceroba_shotgun_pacifist_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_shotgun_pacifist_checker);
        }
        else if (enemy_attack == "Ceroba Transform 1" && !instance_exists(obj_battle_ceroba_phase_1_transformation))
        {
            instance_create(0, 0, obj_battle_ceroba_phase_1_transformation);
        }
        else if (bell_check && enemy_attack == "Ceroba Phase 2 P1 Lanterns" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_2_p1_lanterns))
        {
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_phase_2_p1_lanterns);
        }
        else if (bell_check && enemy_attack == "Ceroba Phase 2 P1 Spawner Mask" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_2_p1_spawner_mask))
        {
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_phase_2_p1_spawner_mask);
        }
        else if (bell_check && enemy_attack == "Ceroba Phase 2 P1 Rope Circle" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_2_p1_rope_circle))
        {
            instance_create_depth(obj_dialogue_box_battle_transformation_any.x, obj_dialogue_box_battle_transformation_any.y, -100, obj_battle_enemy_attack_ceroba_phase_2_p1_rope_circle);
        }
        else if (bell_check && enemy_attack == "Ceroba Phase 2 P1 Circling Lanterns" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_2_p1_circling_lanterns))
        {
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_phase_2_p1_circling_lanterns);
        }
        else if (bell_check && enemy_attack == "Ceroba Phase 2 P1 Ribbon Attack" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_2_p1_ribbon_attack))
        {
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_phase_2_p1_ribbon_attack);
        }
        else if (bell_check && enemy_attack == "Ceroba Phase 2 P1 Obstacles" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_2_p1_obstacle_spawner))
        {
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_phase_2_p1_obstacle_spawner);
        }
        else if (bell_check && enemy_attack == "Ceroba Phase 2 P1 Falling Bells" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_2_p1_falling_bells))
        {
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_phase_2_p1_falling_bells);
        }
        else if (enemy_attack == "Ceroba Phase 2 Spawner" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_2_attack_spawner))
        {
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_phase_2_attack_spawner);
        }
        else if (enemy_attack == "Ceroba Phase 2 Spawner 2" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_2_attack_spawner_2))
        {
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_phase_2_attack_spawner_2);
        }
        else if (enemy_attack == "Ceroba Special Attack" && !instance_exists(obj_battle_enemy_attack_ceroba_phase_2_special_attack_spawner))
        {
            instance_create(0, 0, obj_battle_enemy_attack_ceroba_phase_2_special_attack_spawner);
        }
        else if (enemy_attack == "Ceroba Shield Defense")
        {
            if (global.hotland_flag[2] == 1 && !instance_exists(obj_battle_enemy_attack_ceroba_phase_2_shield_bells_attack))
                instance_create(0, 0, obj_battle_enemy_attack_ceroba_phase_2_shield_bells_attack);
            else if (global.hotland_flag[2] == 2 && !instance_exists(obj_battle_enemy_attack_ceroba_phase_2_shield_bells_attack_2))
                instance_create(0, 0, obj_battle_enemy_attack_ceroba_phase_2_shield_bells_attack_2);
            else if (global.hotland_flag[2] == 3 && !instance_exists(obj_battle_enemy_attack_ceroba_phase_2_shield_bells_attack_3))
                instance_create(0, 0, obj_battle_enemy_attack_ceroba_phase_2_shield_bells_attack_3);
        }
        else if (enemy_attack == "Ceroba Phase 2 Opener" && !instance_exists(obj_ceroba_phase_2_opener))
        {
            instance_create_depth(0, 0, -100, obj_ceroba_phase_2_opener);
        }
        else if (enemy_attack == "Ceroba No Attack")
        {
            with (obj_dialogue_box_battle_transformation_any)
                event_user(0);
        }
    }
}
