function scr_enemy_timer_attacks_flier_solo()
{
    var enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Flier Flies" && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_attack_flier_flies);
        
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1;
            
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max;
        }
    }
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Flier Swarm" && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_attack_flier_swarm);
        
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1;
            
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max;
        }
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Flier Fire" && obj_heart_battle_fighting_parent.moveable == true && !instance_exists(obj_battle_enemy_attack_flier_fire_parent))
    {
        instance_create(obj_dialogue_box_battle_transformation_any.x, obj_dialogue_box_battle_transformation_any.bbox_top - 20, obj_battle_enemy_attack_flier_fire_middle);
        instance_create(obj_battle_enemy_attack_flier_fire_middle.x - 38, obj_battle_enemy_attack_flier_fire_middle.y, obj_battle_enemy_attack_flier_fire_left);
        instance_create(obj_battle_enemy_attack_flier_fire_middle.x + 38, obj_battle_enemy_attack_flier_fire_middle.y, obj_battle_enemy_attack_flier_fire_right);
    }
}
