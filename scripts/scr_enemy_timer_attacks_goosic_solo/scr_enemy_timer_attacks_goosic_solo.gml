function scr_enemy_timer_attacks_goosic_solo()
{
    var enemy_attack = global.enemy_attack;
    var battle_box = obj_dialogue_box_battle_transformation_any;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Goosic EQ Visualizer" && !instance_exists(obj_battle_enemy_attack_eq_visualizer))
            instance_create_depth(0, 0, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_eq_visualizer);
        
        if (enemy_attack == "Goosic Disk" && !instance_exists(obj_battle_enemy_attack_goosic_disk))
            instance_create_depth(320, battle_box.bbox_top - 35, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_goosic_disk);
        
        if (enemy_attack == "Goosic Speaker" && !instance_exists(obj_battle_enemy_attack_goosic_speaker_generator))
            instance_create_depth(320, 320, obj_heart_battle_fighting_parent.depth - 1, obj_battle_enemy_attack_goosic_speaker_generator);
    }
}
