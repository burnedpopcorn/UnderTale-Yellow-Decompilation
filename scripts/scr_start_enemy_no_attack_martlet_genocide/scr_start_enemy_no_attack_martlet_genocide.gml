function scr_start_enemy_no_attack_martlet_genocide()
{
    var enemy_mode;
    
    instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
    enemy_mode = global.enemy_mode;
    
    switch (enemy_mode)
    {
        case 1:
            instance_create(0, 0, obj_quote_battle_martlet_genocide_standard);
            break;
        
        case 2:
            instance_create(0, 0, obj_quote_battle_martlet_genocide_attack);
            break;
        
        case 4:
            instance_create(0, 0, obj_quote_battle_martlet_genocide_apologize);
            break;
    }
}
