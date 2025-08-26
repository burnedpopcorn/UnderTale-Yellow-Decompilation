function scr_battle_core_directory_flavor_text_enemy_1_sparing_2()
{
    var battle_enemy_name = global.battle_enemy_name;
    var enemy_mode = global.enemy_mode;
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "insomnitot solo")
            message[0] = "* Insomnitot is in its happy#  place.";
        else if (battle_enemy_name == "insomnitot duo")
            message[0] = "* Insomnitot is in its happy#  place.";
    }
}
