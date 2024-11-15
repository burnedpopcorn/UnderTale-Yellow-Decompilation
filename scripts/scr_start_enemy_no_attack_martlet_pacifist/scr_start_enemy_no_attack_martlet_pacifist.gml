function scr_start_enemy_no_attack_martlet_pacifist()
{
    var enemy_mode;
    
    instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
    enemy_mode = global.enemy_mode;
    
    switch (enemy_mode)
    {
        case 1:
            instance_create(0, 0, obj_quote_battle_martlet_pacifist_miss);
            break;
        
        case 4:
            instance_create(0, 0, obj_quote_battle_martlet_pacifist_pacifist);
            break;
        
        case 5:
            instance_create(0, 0, obj_quote_battle_martlet_pacifist_true_pacifist);
            break;
        
        case 6:
            instance_create(0, 0, obj_quote_battle_martlet_pacifist_insult_1);
            break;
        
        case 8:
            instance_create(0, 0, obj_quote_battle_martlet_pacifist_confused_1);
            break;
        
        case 9:
            instance_create(0, 0, obj_quote_battle_martlet_pacifist_confused_2);
            break;
    }
}
