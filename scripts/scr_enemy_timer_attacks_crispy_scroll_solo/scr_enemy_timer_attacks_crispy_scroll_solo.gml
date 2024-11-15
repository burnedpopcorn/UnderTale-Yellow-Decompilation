function scr_enemy_timer_attacks_crispy_scroll_solo()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Crispy Slash" && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_attack_crispy_slash);
        
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1;
            
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max;
        }
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Crispy Laser" && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_attack_crispy_laser);
        
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1;
            
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max;
        }
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Crispy Tub" && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_attack_crispy_tub);
        
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1;
            
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max;
        }
    }
}
