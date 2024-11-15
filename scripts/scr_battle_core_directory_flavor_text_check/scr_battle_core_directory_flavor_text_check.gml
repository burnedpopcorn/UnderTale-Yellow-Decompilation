function scr_battle_core_directory_flavor_text_check()
{
    var battle_enemy_name, game_mode;
    
    battle_enemy_name = global.battle_enemy_name;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier solo")
            message[0] = "* Flier feels nothing.";
    }
}
