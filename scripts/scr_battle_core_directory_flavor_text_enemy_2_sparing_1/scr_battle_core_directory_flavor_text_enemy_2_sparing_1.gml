function scr_battle_core_directory_flavor_text_enemy_2_sparing_1()
{
    var battle_enemy_name, enemy_mode_2, game_mode;
    
    battle_enemy_name = global.battle_enemy_name;
    enemy_mode_2 = global.enemy_mode_2;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier penilla duo")
            message[0] = "* Penilla is packing up her art#  supplies for the day.";
        else if (battle_enemy_name == "sweet corn penilla duo")
            message[0] = "* Penilla is packing up her art#  supplies for the day.";
        else if (battle_enemy_name == "crispy scroll penilla duo")
            message[0] = "* Penilla is packing up her art#  supplies for the day.";
        else if (battle_enemy_name == "know cone insomnitot duo")
            message[0] = "* Insomnitot is smiling at its#  dream.";
        else if (battle_enemy_name == "frostermit know cone duo")
            message[0] = "* Know Cone has been enlightened.";
        else if (battle_enemy_name == "cactony slither duo")
            message[0] = "* Sir Slither can't convince#  you.";
        else if (battle_enemy_name == "jandroid goosic duo")
            message[0] = "* Goosic is lost in the music.";
        else if (battle_enemy_name == "jandroid duo")
            message[0] = "* Jandroid finds you too#  hygienic.";
    }
}
