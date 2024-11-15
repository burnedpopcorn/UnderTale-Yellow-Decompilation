function scr_battle_core_directory_flavor_text_enemy_1_special_6()
{
    var battle_enemy_name, game_mode;
    
    battle_enemy_name = global.battle_enemy_name;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "martlet pacifist")
            message[0] = "* All this lack of movement makes#  you realize how cold it is.";
    }
}
