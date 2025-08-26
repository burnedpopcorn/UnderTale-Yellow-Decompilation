function scr_battle_core_directory_flavor_text_enemy_2_default_5()
{
    var battle_enemy_name = global.battle_enemy_name;
    var enemy_mode_2 = global.enemy_mode_2;
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier penilla duo")
            message[0] = "* Penilla seems busy drawing.";
        else if (battle_enemy_name == "sweet corn penilla duo")
            message[0] = "* Penilla seems busy drawing.";
        else if (battle_enemy_name == "crispy scroll penilla duo")
            message[0] = "* Penilla seems busy drawing.";
        else if (battle_enemy_name == "know cone insomnitot duo")
            message[0] = "* Insomnitot wants to leave, but doesn't want to move.";
        else if (battle_enemy_name == "frostermit know cone duo")
            message[0] = "* Know Cone takes a break from#  hunting for fire to gather some#  berries.";
        else if (battle_enemy_name == "cactony slither duo")
            message[0] = "* Sir Slither is going through a#  divorce.";
        else if (battle_enemy_name == "jandroid goosic duo")
            message[0] = "* Goosic does a little two-step#  like it's nothing.";
    }
}
