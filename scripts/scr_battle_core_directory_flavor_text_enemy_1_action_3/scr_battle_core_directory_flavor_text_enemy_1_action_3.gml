function scr_battle_core_directory_flavor_text_enemy_1_action_3()
{
    var battle_enemy_name, game_mode;
    
    battle_enemy_name = global.battle_enemy_name;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            message[0] = "* Craniex seems to be getting#  tired of your jokes.";
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "insomnitot solo")
            message[0] = "* Insomnitot struggles to#  maintain consciousness.";
        else if (battle_enemy_name == "insomnitot duo")
            message[0] = "* Insomnitot struggles to#  maintain consciousness.";
        else if (battle_enemy_name == "bowll solo")
            message[0] = "* Bowll is beginning to put the#  pieces together.";
    }
}
