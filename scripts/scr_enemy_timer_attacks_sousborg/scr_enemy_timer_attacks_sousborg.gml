function scr_enemy_timer_attacks_sousborg()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (global.enemy_sparing)
        {
            with (obj_dialogue_box_battle_transformation_any)
                event_user(0);
            
            exit;
        }
        
        if (enemy_attack == "Egg Crack" && !instance_exists(obj_battle_enemy_attack_sousborg_egg_generator))
            instance_create_depth(0, 0, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_sousborg_egg_generator);
        else if (enemy_attack == "Egg Boil" && !instance_exists(obj_battle_enemy_attack_sousborg_egg_boil_generator))
            instance_create_depth(0, 0, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_sousborg_egg_boil_generator);
        else if (enemy_attack == "Sousborg Season" && !instance_exists(obj_battle_enemy_attack_sousborg_season_generator))
            instance_create_depth(0, 0, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_sousborg_season_generator);
        else if (enemy_attack == "Sousborg Flip" && !instance_exists(obj_battle_enemy_attack_sousborg_flip_generator))
            instance_create_depth(0, 0, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_sousborg_flip_generator);
    }
}
