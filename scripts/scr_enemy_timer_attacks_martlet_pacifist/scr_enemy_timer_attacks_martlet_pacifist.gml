function scr_enemy_timer_attacks_martlet_pacifist()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (global.last_text_move_select > -1 && enemy_attack != "Martlet Feather Finale")
    {
        if (!instance_exists(obj_attack_cycler_martlet))
            instance_create(0, 0, obj_attack_cycler_martlet);
    }
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (!instance_exists(obj_quote_battle_martlet_pacifist_during_attack_parent))
        {
            if (enemy_attack == "Martlet Feather Fall" && !instance_exists(obj_battle_enemy_attack_martlet_feather_fall_checker))
            {
                instance_create(0, 0, obj_battle_enemy_attack_martlet_feather_fall_checker);
            }
            else if (enemy_attack == "Martlet Feather Flow" && !instance_exists(obj_battle_enemy_attack_martlet_feather_flow_checker))
            {
                instance_create(0, 0, obj_battle_enemy_attack_martlet_feather_flow_checker);
            }
            else if (enemy_attack == "Martlet Package" && !instance_exists(obj_battle_enemy_attack_martlet_package_checker))
            {
                instance_create(0, 0, obj_battle_enemy_attack_martlet_package_checker);
            }
            else if (enemy_attack == "Martlet Feather Circle" && !instance_exists(obj_battle_enemy_attack_martlet_feather_circle_checker))
            {
                instance_create(0, 0, obj_battle_enemy_attack_martlet_feather_circle_checker);
            }
            else if (enemy_attack == "Martlet Feather Spiral" && !instance_exists(obj_battle_enemy_attack_martlet_feather_spiral_checker))
            {
                instance_create(0, 0, obj_battle_enemy_attack_martlet_feather_spiral_checker);
            }
            else if (enemy_attack == "Martlet Wing Gust" && !instance_exists(obj_battle_enemy_attack_martlet_wing_gust_body))
            {
                instance_create(obj_martlet_body.x, obj_martlet_body.y, obj_battle_enemy_attack_martlet_wing_gust_body);
            }
            else if (enemy_attack == "Martlet Catapult")
            {
            }
            else if (enemy_attack == "Martlet Tornado" && !instance_exists(obj_battle_enemy_attack_martlet_tornado_checker))
            {
                instance_create(0, 0, obj_battle_enemy_attack_martlet_tornado_checker);
            }
            else if (enemy_attack == "Martlet Feather Finale" && !instance_exists(obj_battle_enemy_attack_martlet_feather_finale_checker))
            {
                instance_create(0, 0, obj_battle_enemy_attack_martlet_feather_finale_checker);
            }
        }
    }
}
