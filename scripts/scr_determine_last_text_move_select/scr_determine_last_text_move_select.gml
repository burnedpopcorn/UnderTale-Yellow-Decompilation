function scr_determine_last_text_move_select()
{
    var battle_enemy_name;
    
    battle_enemy_name = global.battle_enemy_name;
    
    switch (battle_enemy_name)
    {
        case "craniex":
        case "ms mettaton":
            return 4;
            break;
        
        default:
            return 1;
    }
}
