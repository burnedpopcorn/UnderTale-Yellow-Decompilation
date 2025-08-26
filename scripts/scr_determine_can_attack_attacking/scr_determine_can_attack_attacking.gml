function scr_determine_can_attack_attacking()
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
                if (global.enemy_sparing == true)
                    return false;
                else
                    return true;
                
                break;
            
            case "dalv":
                if (global.enemy_sparing == true || global.action_2_important == true)
                    return false;
                else
                    return true;
                
                break;
            
            case "insomnitot solo":
                if (global.enemy_sparing == true && global.enemy_low_hp == false)
                    return false;
                else
                    return true;
                
                break;
            
            case "insomnitot duo":
                if (((global.enemy_sparing == true && global.enemy_low_hp == false) || (global.enemy_dead + global.enemy_spared) >= 1) && ((global.enemy_sparing_2 == true && global.enemy_low_hp_2 == false) || (global.enemy_dead_2 + global.enemy_spared_2) >= 1))
                    return false;
                else
                    return true;
                
                break;
            
            case "know cone insomnitot duo":
                if ((global.enemy_dead + global.enemy_spared) >= 1 && (global.enemy_sparing_2 == true && global.enemy_low_hp_2 == false))
                    return false;
                else
                    return true;
                
                break;
            
            case "cactony slither duo":
                return true;
                break;
            
            case "martlet pacifist":
                var enemy_mode = global.enemy_mode;
                
                switch (enemy_mode)
                {
                    case 2:
                    case 3:
                    case 7:
                        return true;
                        break;
                    
                    case 4:
                        if (global.turns_passed == 3)
                            return true;
                        else
                            return false;
                        
                        break;
                    
                    case 5:
                        if (global.turns_passed <= 4)
                            return true;
                        else
                            return false;
                        
                        break;
                    
                    case 6:
                        if (global.last_action_selected == "Action 3 Phase 2" || global.last_action_selected == "Action 3 Phase 1")
                            return true;
                        else
                            return false;
                        
                        break;
                    
                    default:
                        return false;
                }
                
                break;
            
            case "martlet genocide":
                var enemy_mode = global.enemy_mode;
                
                switch (enemy_mode)
                {
                    case 2:
                        if (global.hit_count >= 3)
                            return true;
                        else
                            return false;
                        
                        break;
                    
                    case 3:
                        return true;
                        break;
                    
                    default:
                        return false;
                }
                
                break;
            
            case "dummy training pacifist":
                return false;
                break;
            
            default:
                return true;
        }
    }
}
