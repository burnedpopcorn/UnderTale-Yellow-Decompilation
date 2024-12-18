function scr_enemy_timer_attacks_flier_trio()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Flier Flies Double" && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_attack_flier_flies_double);
        
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1;
            
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max;
        }
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Flier Swarm Double" && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_attack_flier_swarm_double);
        
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1;
            
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max;
        }
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Flier Fire Flies" && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (!instance_exists(obj_battle_enemy_attack_flier_fire_parent))
        {
            instance_create(obj_dialogue_box_battle_transformation_any.x - 38, obj_dialogue_box_battle_transformation_any.bbox_top - 20, obj_battle_enemy_attack_flier_fire_left);
            instance_create(obj_dialogue_box_battle_transformation_any.x + 38, obj_dialogue_box_battle_transformation_any.bbox_top - 20, obj_battle_enemy_attack_flier_fire_right);
        }
        
        script_execute(scr_enemy_attack_flier_flies);
        
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1;
            
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max;
        }
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && (enemy_attack == "Flier Flies" || enemy_attack == "Flier Fire") && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_timer_attacks_flier_solo);
    }
}
