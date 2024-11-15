function scr_enemy_timer_attacks_insomnitot_solo()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Insomnitot Sheep" && !instance_exists(obj_battle_enemy_attack_insomnitot_fence))
        {
            script_execute(scr_enemy_attack_insomnitot_sheep);
        }
        else if (enemy_attack == "Insomnitot ZZZ")
        {
            script_execute(scr_enemy_attack_insomnitot_zzz);
            
            if (global.attack_counter >= 0)
            {
                global.attack_counter -= 1;
                
                if (global.attack_counter < 0)
                    global.attack_counter = global.attack_counter_max;
            }
        }
        else if (enemy_attack == "Insomnitot Stars")
        {
            script_execute(scr_enemy_attack_insomnitot_stars);
            
            if (global.attack_counter >= 0)
            {
                global.attack_counter -= 1;
                
                if (global.attack_counter < 0)
                    global.attack_counter = global.attack_counter_max;
            }
        }
    }
}
