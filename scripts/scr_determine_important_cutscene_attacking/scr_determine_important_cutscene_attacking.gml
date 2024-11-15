function scr_determine_important_cutscene_attacking()
{
    var game_mode, battle_enemy_name, enemy_mode;
    
    game_mode = global.game_mode;
    battle_enemy_name = global.battle_enemy_name;
    
    if (global.game_mode == "customs")
    {
    }
    else if (global.game_mode == "yellow")
    {
        switch (battle_enemy_name)
        {
            case "froggit intro":
                return true;
                break;
            
            case "martlet pacifist":
                enemy_mode = global.enemy_mode;
                
                switch (enemy_mode)
                {
                    case 10:
                    case 11:
                    case 12:
                        return true;
                        break;
                    
                    default:
                        return false;
                }
                
                break;
            
            case "martlet genocide":
                enemy_mode = global.enemy_mode;
                
                switch (enemy_mode)
                {
                    case 5:
                    case 6:
                        return true;
                        break;
                    
                    default:
                        return false;
                }
                
                break;
            
            default:
                return false;
        }
    }
}
