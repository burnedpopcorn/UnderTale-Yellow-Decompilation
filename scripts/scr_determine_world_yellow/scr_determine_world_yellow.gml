function scr_determine_world_yellow()
{
    var current_world_value = global.player_world_value;
    
    switch (current_world_value)
    {
        case 0:
            return "Ruins";
            break;
        
        case 1:
            return "Dark Ruins";
            break;
        
        case 2:
            return "Lower Snowdin";
            break;
        
        default:
            return "Ruins";
    }
}
