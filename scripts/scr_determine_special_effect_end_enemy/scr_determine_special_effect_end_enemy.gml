function scr_determine_special_effect_end_enemy(argument0)
{
    var game_mode, battle_enemy_name;
    
    game_mode = global.game_mode;
    battle_enemy_name = global.battle_enemy_name;
    
    if (global.game_mode == "customs")
    {
    }
    else if (global.game_mode == "yellow")
    {
        switch (battle_enemy_name)
        {
            case "martlet pacifist":
                scr_enemy_mode_shift_end_martlet_pacifist(argument0);
                break;
            
            case "martlet genocide":
                scr_enemy_mode_shift_end_martlet_genocide(argument0);
                break;
        }
    }
    
    global.special_effect_end_value = "";
}
