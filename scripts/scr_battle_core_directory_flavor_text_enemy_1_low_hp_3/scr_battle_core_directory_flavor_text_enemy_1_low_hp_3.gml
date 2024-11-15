function scr_battle_core_directory_flavor_text_enemy_1_low_hp_3()
{
    var battle_enemy_name, enemy_mode, game_mode;
    
    battle_enemy_name = global.battle_enemy_name;
    enemy_mode = global.enemy_mode;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "trihecta together")
            message[0] = "* Ta is tearing up.";
        else if (battle_enemy_name == "trihecta separated")
            message[0] = "* They don't know what to do.";
    }
}
