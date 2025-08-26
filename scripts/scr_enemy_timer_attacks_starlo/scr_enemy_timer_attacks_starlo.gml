function scr_enemy_timer_attacks_starlo()
{
    var enemy_attack = global.enemy_attack;
    
    if (!instance_exists(obj_attack_cycler_starlo))
        instance_create(0, 0, obj_attack_cycler_starlo);
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Starlo Intro" && !instance_exists(obj_battle_enemy_attack_starlo_intro_attack_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_intro_attack_checker);
        }
        else if (enemy_attack == "Starlo Bullet Rain" && !instance_exists(obj_battle_enemy_attack_starlo_bullet_rain_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_bullet_rain_checker);
        }
        else if (enemy_attack == "Starlo Guns Horizontal" && !instance_exists(obj_battle_enemy_attack_starlo_guns_horizontal_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_guns_horizontal_checker);
        }
        else if (enemy_attack == "Starlo Dynamite" && !instance_exists(obj_battle_enemy_attack_starlo_dynamite_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_dynamite_checker);
        }
        else if (enemy_attack == "Starlo Guns n Dynamite" && !instance_exists(obj_battle_enemy_attack_starlo_guns_n_dynamite_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_guns_n_dynamite_checker);
        }
        else if (enemy_attack == "Starlo Take Aim One" && !instance_exists(obj_battle_enemy_attack_starlo_take_aim_one_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_take_aim_one_checker);
        }
        else if (enemy_attack == "Starlo Take Aim" && !instance_exists(obj_battle_enemy_attack_starlo_take_aim_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_take_aim_checker);
        }
        else if (enemy_attack == "Starlo Bell" && !instance_exists(obj_battle_enemy_attack_starlo_bell_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_bell_checker);
        }
        else if (enemy_attack == "Starlo Bell and Guns" && !instance_exists(obj_battle_enemy_attack_starlo_bell_guns_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_bell_guns_checker);
        }
        else if (enemy_attack == "Starlo Guns Surround" && !instance_exists(obj_battle_enemy_attack_starlo_guns_surround_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_guns_surround_checker);
        }
        else if (enemy_attack == "Starlo Horseshoe" && !instance_exists(obj_battle_enemy_attack_starlo_horseshoe_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_horseshoe_checker);
        }
        else if (enemy_attack == "Starlo Take Aim Slow" && !instance_exists(obj_battle_enemy_attack_starlo_take_aim_slow_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_take_aim_slow_checker);
        }
        else if (enemy_attack == "Starlo Shooting Dynamite" && !instance_exists(obj_battle_enemy_attack_starlo_shooting_dynamite_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_shooting_dynamite_checker);
        }
        else if (enemy_attack == "Starlo Surround Slow" && !instance_exists(obj_battle_enemy_attack_starlo_slow_surround_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_slow_surround_checker);
        }
        else if (enemy_attack == "Starlo Bottles" && !instance_exists(obj_battle_enemy_attack_starlo_bottles_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_bottles_checker);
        }
        else if (enemy_attack == "Starlo Train" && !instance_exists(obj_battle_enemy_attack_starlo_train_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_train_checker);
        }
        else if (enemy_attack == "Starlo Finale" && !instance_exists(obj_battle_enemy_attack_starlo_finale_checker))
        {
            instance_create(0, 0, obj_battle_enemy_attack_starlo_finale_checker);
        }
        else if (enemy_attack == "Starlo No Attack")
        {
            with (obj_dialogue_box_battle_transformation_any)
                event_user(0);
        }
    }
}
