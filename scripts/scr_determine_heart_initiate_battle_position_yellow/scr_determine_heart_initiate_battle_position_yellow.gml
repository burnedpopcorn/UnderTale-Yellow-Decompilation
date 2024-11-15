function scr_determine_heart_initiate_battle_position_yellow()
{
    var battle_enemy_name;
    
    if (live_call())
        return global.live_result;
    
    battle_enemy_name = global.battle_enemy_name;
    
    switch (battle_enemy_name)
    {
        case "flowey intro":
        case "martlet pacifist":
        case "martlet genocide":
        case "shufflers":
            point_x2 = __view_get(e__VW.XView, 0) + 160;
            point_y2 = __view_get(e__VW.YView, 0) + 160;
            break;
        
        case "el bailador":
            point_x2 = __view_get(e__VW.XView, 0) + 160;
            point_y2 = __view_get(e__VW.YView, 0) + 185;
            break;
        
        case "boulders minifight":
        case "steam minifight":
            point_x2 = __view_get(e__VW.XView, 0) + 160;
            point_y2 = __view_get(e__VW.YView, 0) + 130;
            break;
        
        case "asgore":
            point_x2 = __view_get(e__VW.XView, 0) + 160;
            point_y2 = __view_get(e__VW.YView, 0) + 120;
            break;
        
        case "energy balls minifight":
            point_x2 = __view_get(e__VW.XView, 0) + 160;
            point_y2 = __view_get(e__VW.YView, 0) + 160;
            break;
        
        default:
            point_x2 = __view_get(e__VW.XView, 0) + 24;
            point_y2 = __view_get(e__VW.YView, 0) + 227;
    }
}
