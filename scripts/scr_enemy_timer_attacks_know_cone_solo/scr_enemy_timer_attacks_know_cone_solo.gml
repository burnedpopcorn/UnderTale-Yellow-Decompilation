function scr_enemy_timer_attacks_know_cone_solo()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Know Cone Blueberries")
        {
            script_execute(scr_enemy_attack_know_cone_blueberries);
            
            if (global.attack_counter >= 0)
            {
                global.attack_counter -= 1;
                
                if (global.attack_counter < 0)
                    global.attack_counter = global.attack_counter_max;
            }
        }
        else if (enemy_attack == "Know Cone Oranges")
        {
            script_execute(scr_enemy_attack_know_cone_oranges);
            
            if (global.attack_counter >= 0)
            {
                global.attack_counter -= 1;
                
                if (global.attack_counter < 0)
                    global.attack_counter = global.attack_counter_max;
            }
        }
        else if (enemy_attack == "Know Cone Cherries" && !instance_exists(obj_battle_enemy_attack_know_cone_cherry))
        {
            script_execute(scr_enemy_attack_know_cone_cherries);
        }
        else if (enemy_attack == "Know Cone Fig" && !instance_exists(obj_battle_enemy_attack_know_cone_fig))
        {
            script_execute(scr_enemy_attack_know_cone_fig);
        }
    }
}
