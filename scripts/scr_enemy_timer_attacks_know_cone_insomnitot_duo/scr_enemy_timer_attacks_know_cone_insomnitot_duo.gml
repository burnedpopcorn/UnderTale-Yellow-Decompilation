function scr_enemy_timer_attacks_know_cone_insomnitot_duo()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Know Cone Blueberries ZZZ")
        {
            script_execute(scr_enemy_attack_know_cone_blueberries_zzz);
            
            if (global.attack_counter >= 0)
            {
                global.attack_counter -= 1;
                
                if (global.attack_counter < 0)
                    global.attack_counter = global.attack_counter_max;
            }
        }
        else if (enemy_attack == "Know Cone Oranges Stars")
        {
            script_execute(scr_enemy_attack_know_cone_oranges_stars);
            
            if (global.attack_counter >= 0)
            {
                global.attack_counter -= 1;
                
                if (global.attack_counter < 0)
                    global.attack_counter = global.attack_counter_max;
            }
        }
        else if (enemy_attack == "Know Cone Blueberries" || enemy_attack == "Know Cone Oranges" || enemy_attack == "Know Cone Cherries" || enemy_attack == "Know Cone Fig")
        {
            script_execute(scr_enemy_timer_attacks_know_cone_solo);
        }
        else if (enemy_attack == "Insomnitot Sheep" || enemy_attack == "Insomnitot ZZZ" || enemy_attack == "Insomnitot Stars")
        {
            script_execute(scr_enemy_timer_attacks_insomnitot_solo);
        }
    }
}
