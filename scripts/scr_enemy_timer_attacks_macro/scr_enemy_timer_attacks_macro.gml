function scr_enemy_timer_attacks_macro()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Macro Transform" && !instance_exists(obj_battle_enemy_attack_macro_transform_creator))
            instance_create(0, 0, obj_battle_enemy_attack_macro_transform_creator);
        else if (enemy_attack == "Big Frogs" && !instance_exists(obj_battle_enemy_attack_macro_big_frogs_creator))
            instance_create(0, 0, obj_battle_enemy_attack_macro_big_frogs_creator);
        else if (enemy_attack == "Frogger" && !instance_exists(obj_battle_enemy_attack_macro_frogger_creator))
            instance_create(0, 0, obj_battle_enemy_attack_macro_frogger_creator);
        else if (enemy_attack == "Sword Frog" && !instance_exists(obj_battle_enemy_attack_macro_sword_frog_creator))
            instance_create(0, 0, obj_battle_enemy_attack_macro_sword_frog_creator);
        else if (enemy_attack == "Log Frogs" && !instance_exists(obj_battle_enemy_attack_macro_log_frog_creator))
            instance_create(0, 0, obj_battle_enemy_attack_macro_log_frog_creator);
        else if (enemy_attack == "Gun Flies" && !instance_exists(obj_battle_enemy_attack_macro_gun_flies_creator))
            instance_create(0, 0, obj_battle_enemy_attack_macro_gun_flies_creator);
        else if (enemy_attack == "Space Frog" && !instance_exists(obj_battle_enemy_attack_macro_space_frog_creator))
            instance_create(0, 0, obj_battle_enemy_attack_macro_space_frog_creator);
        else if (enemy_attack == "Tongue Attack" && !instance_exists(obj_battle_enemy_attack_macro_tongue_attack_creator))
            instance_create(0, 0, obj_battle_enemy_attack_macro_tongue_attack_creator);
        else if (enemy_attack == "Frog Choir" && !instance_exists(obj_battle_enemy_attack_macro_frog_choir_creator))
            instance_create(0, 0, obj_battle_enemy_attack_macro_frog_choir_creator);
        else if (enemy_attack == "Flies Bullet Hell" && !instance_exists(obj_battle_enemy_attack_macro_flies_bullet_hell_creator))
            instance_create(0, 0, obj_battle_enemy_attack_macro_flies_bullet_hell_creator);
        else if (enemy_attack == "Mecha Frog" && !instance_exists(obj_battle_enemy_attack_mecha_frog_creator))
            instance_create(0, 0, obj_battle_enemy_attack_mecha_frog_creator);
    }
}
