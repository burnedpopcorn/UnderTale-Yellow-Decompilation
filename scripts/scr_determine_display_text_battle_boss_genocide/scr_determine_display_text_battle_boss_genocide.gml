function scr_determine_display_text_battle_boss_genocide()
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
            case "decibat":
                if (!instance_exists(obj_piece))
                    return true;
                else
                    return false;
                
                break;
            
            default:
                return true;
        }
    }
}
