function scr_enemy_timer_attacks_tellyvis_solo()
{
    var enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Tellyvis Logo" && !instance_exists(obj_battle_enemy_attack_tellyvis_logo))
            instance_create(320, 280, obj_battle_enemy_attack_tellyvis_logo);
        
        if (enemy_attack == "Tellyvis Remote" && !instance_exists(obj_battle_enemy_attack_tellyvis_remote_generator))
            instance_create(320, 280, obj_battle_enemy_attack_tellyvis_remote_generator);
        
        if (enemy_attack == "Tellyvis Tape" && !instance_exists(obj_battle_enemy_attack_tellyvis_tape_generator))
            instance_create(320, 280, obj_battle_enemy_attack_tellyvis_tape_generator);
    }
}
