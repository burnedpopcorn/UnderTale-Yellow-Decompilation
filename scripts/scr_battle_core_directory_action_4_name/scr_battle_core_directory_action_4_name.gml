function scr_battle_core_directory_action_4_name()
{
    var battle_enemy_name, act_number, game_mode;
    
    if (global.battling_boss == true)
    {
        battle_enemy_name = global.battle_enemy_name;
        
        if (global.action_4_important == true)
            draw_set_color(global.action_4_color);
        else
            draw_set_color(c_white);
    }
    else
    {
        act_number = global.act_number;
        
        switch (act_number)
        {
            case 1:
                battle_enemy_name = global.battle_enemy_name_1;
                
                if (global.action_4_important == true)
                    draw_set_color(global.action_4_color);
                else
                    draw_set_color(c_white);
                
                break;
            
            case 2:
                battle_enemy_name = global.battle_enemy_name_2;
                
                if (global.action_4_important_2 == true)
                    draw_set_color(global.action_4_color_2);
                else
                    draw_set_color(c_white);
                
                break;
            
            case 3:
                battle_enemy_name = global.battle_enemy_name_3;
                
                if (global.action_4_important_3 == true)
                    draw_set_color(global.action_4_color_3);
                else
                    draw_set_color(c_white);
                
                break;
            
            default:
                battle_enemy_name = global.battle_enemy_name_1;
                
                if (global.action_4_important == true)
                {
                    draw_set_color(global.action_4_color);
                    break;
                }
                
                draw_set_color(c_white);
        }
    }
    
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
    }
}
