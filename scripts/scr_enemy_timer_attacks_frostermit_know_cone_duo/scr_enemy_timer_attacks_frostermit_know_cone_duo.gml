function scr_enemy_timer_attacks_frostermit_know_cone_duo()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Frostermit Snowflakes Blueberries")
        {
            script_execute(scr_enemy_attack_frostermit_snowflakes_blueberries);
            
            if (global.attack_counter >= 0)
            {
                global.attack_counter -= 1;
                
                if (global.attack_counter < 0)
                    global.attack_counter = global.attack_counter_max;
            }
        }
        else if (enemy_attack == "Frostermit Snowflakes Oranges")
        {
            script_execute(scr_enemy_attack_frostermit_snowflakes_oranges);
            
            if (global.attack_counter >= 0)
            {
                global.attack_counter -= 1;
                
                if (global.attack_counter < 0)
                    global.attack_counter = global.attack_counter_max;
            }
        }
        else if (enemy_attack == "Frostermit Snowflakes" || enemy_attack == "Frostermit Ice Cubes" || enemy_attack == "Frostermit Pinchers")
        {
            script_execute(scr_enemy_timer_attacks_frostermit_solo);
        }
        else if (enemy_attack == "Know Cone Blueberries" || enemy_attack == "Know Cone Oranges" || enemy_attack == "Know Cone Cherries" || enemy_attack == "Know Cone Fig")
        {
            script_execute(scr_enemy_timer_attacks_know_cone_solo);
        }
    }
}
