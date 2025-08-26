function scr_create_quote_bubble_battle_defeat()
{
    var battle_enemy_name = global.battle_enemy_name;
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            instance_create(392, 85, obj_quote_bubble_battle);
        else if (battle_enemy_name == "ms mettaton")
            instance_create(392, 85, obj_quote_bubble_battle);
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "dalv")
            instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
        else if (battle_enemy_name == "martlet genocide")
            instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
        else if (battle_enemy_name == "el bailador")
            instance_create(390, 74, obj_quote_bubble_battle_yellow_3);
        else if (battle_enemy_name == "axis")
            instance_create(390, 74, obj_quote_bubble_battle_yellow_3);
    }
}
