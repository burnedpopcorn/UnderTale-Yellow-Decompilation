function scr_battle_core_directory_flavor_text_enemy_2_sparing_2()
{
    var battle_enemy_name = global.battle_enemy_name;
    var enemy_mode_2 = global.enemy_mode_2;
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "know cone insomnitot duo")
            message[0] = "* Insomnitot is in its happy#  place.";
    }
}
