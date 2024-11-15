function scr_enemy_timer_attacks_axis()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (!instance_exists(obj_attack_cycler_axis))
        instance_create(0, 0, obj_attack_cycler_axis);
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Introductory Attack" && !instance_exists(obj_battle_enemy_attack_energy_balls_0_creator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_energy_balls_0_creator);
        }
        else if (enemy_attack == "Energy Balls 1" && !instance_exists(obj_battle_enemy_attack_energy_balls_1_creator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_energy_balls_1_creator);
        }
        else if (enemy_attack == "Energy Balls 2" && !instance_exists(obj_battle_enemy_attack_energy_balls_2_creator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_energy_balls_2_creator);
        }
        else if (enemy_attack == "Super Ball 1" && !instance_exists(obj_battle_enemy_attack_super_ball_1_creator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_super_ball_1_creator);
        }
        else if (enemy_attack == "Energy Balls Spin 1" && !instance_exists(obj_battle_enemy_attack_energy_balls_spin_creator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_energy_balls_spin_creator);
        }
        else if (enemy_attack == "Hand Laser" && !instance_exists(obj_battle_enemy_attack_hand_lasers_creator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_hand_lasers_creator);
        }
        else if (enemy_attack == "Super Ball 2" && !instance_exists(obj_battle_enemy_attack_super_ball_1_creator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_super_ball_1_creator);
        }
        else if (enemy_attack == "Color Lasers" && !instance_exists(obj_battle_enemy_attack_color_lasers_creator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_color_lasers_creator);
        }
        else if (enemy_attack == "Color Lasers 2" && !instance_exists(obj_battle_enemy_attack_color_lasers_2_creator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_color_lasers_2_creator);
        }
        else if (enemy_attack == "Super Ball 3" && !instance_exists(obj_battle_enemy_attack_super_ball_1_creator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_super_ball_1_creator);
        }
        else if (enemy_attack == "Steam Walls Spin" && !instance_exists(obj_battle_enemy_attack_steam_walls_spin))
        {
            instance_create(0, 0, obj_battle_enemy_attack_steam_walls_spin);
        }
        else if (enemy_attack == "Pulse Energy" && !instance_exists(obj_battle_enemy_attack_pulse_energy))
        {
            instance_create(0, 0, obj_battle_enemy_attack_pulse_energy);
        }
        else if (enemy_attack == "Super Ball 4" && !instance_exists(obj_battle_enemy_attack_super_ball_1_creator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_super_ball_1_creator);
        }
        else if (enemy_attack == "Super Ball 5" && !instance_exists(obj_battle_enemy_attack_super_ball_1_creator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_super_ball_1_creator);
        }
        else if (enemy_attack == "Super Ball 6" && !instance_exists(obj_battle_enemy_attack_super_ball_1_creator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_super_ball_1_creator);
        }
        else if (enemy_attack == "Lobbing Bombs" && !instance_exists(obj_battle_enemy_attack_axis_lobbing_bombs))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_lobbing_bombs);
        }
        else if (enemy_attack == "X Colors" && !instance_exists(obj_battle_enemy_attack_x_colors_creator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_x_colors_creator);
        }
        else if (enemy_attack == "Lobbing Bombs 2" && !instance_exists(obj_battle_enemy_attack_axis_lobbing_bombs_2))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_lobbing_bombs_2);
        }
        else if (enemy_attack == "Magnetic Orbs" && !instance_exists(obj_battle_enemy_attack_axis_magnetic_orbs_creator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_magnetic_orbs_creator);
        }
        else if (enemy_attack == "Axis Turrets" && !instance_exists(obj_battle_enemy_attack_axis_turrets))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_turrets);
        }
        else if (enemy_attack == "Axis Turrets 2" && !instance_exists(obj_battle_enemy_attack_axis_turrets_2))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_turrets_2);
        }
        else if (enemy_attack == "Laser Grid" && !instance_exists(obj_battle_enemy_attack_axis_laser_grid))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_laser_grid);
        }
        else if (enemy_attack == "Axis Turrets 3" && !instance_exists(obj_battle_enemy_attack_axis_turrets_3))
        {
            instance_create(0, 0, obj_battle_enemy_attack_axis_turrets_3);
        }
        else if (enemy_attack == "Guardener No Attack")
        {
            with (obj_dialogue_box_battle_transformation_any)
                event_user(0);
        }
    }
}
