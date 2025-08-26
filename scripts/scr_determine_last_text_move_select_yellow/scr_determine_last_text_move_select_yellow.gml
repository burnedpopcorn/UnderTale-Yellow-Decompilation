function scr_determine_last_text_move_select_yellow()
{
    var battle_enemy_name = global.battle_enemy_name;
    
    switch (battle_enemy_name)
    {
        case "flier solo":
            return 4;
            break;
        
        case "flier trio":
            return 8;
            break;
        
        case "penilla solo":
        case "flier penilla duo":
            return 5;
            break;
        
        default:
            return 1;
    }
}
