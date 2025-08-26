function scr_determine_special_effect_end_enemy(arg0)
{
    var game_mode = global.game_mode;
    var battle_enemy_name = global.battle_enemy_name;
    
    if (global.game_mode == "customs")
    {
    }
    else if (global.game_mode == "yellow")
    {
        switch (battle_enemy_name)
        {
            case "martlet pacifist":
                scr_enemy_mode_shift_end_martlet_pacifist(arg0);
                break;
            
            case "martlet genocide":
                scr_enemy_mode_shift_end_martlet_genocide(arg0);
                break;
        }
    }
    
    global.special_effect_end_value = "";
}
