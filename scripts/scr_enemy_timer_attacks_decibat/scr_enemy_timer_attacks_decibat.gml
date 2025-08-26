function scr_enemy_timer_attacks_decibat()
{
    var enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Decibat Wave Blue" && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_attack_decibat_wave_blue);
        
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1;
            
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max;
        }
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Decibat Wave Orange" && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_attack_decibat_wave_orange);
        
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1;
            
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max;
        }
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Decibat Wave Multi" && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_attack_decibat_wave_multi);
        
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1;
            
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max;
        }
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Decibat Wave Mini" && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_attack_decibat_wave_mini);
        
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1;
            
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max;
        }
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Decibat Stalagmite" && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_attack_decibat_stalagmite);
        
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1;
            
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max;
        }
    }
}
