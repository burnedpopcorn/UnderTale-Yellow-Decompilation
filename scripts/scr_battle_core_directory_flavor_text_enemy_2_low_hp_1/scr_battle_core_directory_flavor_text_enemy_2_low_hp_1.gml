function scr_battle_core_directory_flavor_text_enemy_2_low_hp_1()
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
            message[0] = "* Penilla looks like she might#  crack under the pressure.";
        else if (battle_enemy_name == "sweet corn penilla duo")
            message[0] = "* Penilla looks like she might#  crack under the pressure.";
        else if (battle_enemy_name == "crispy scroll penilla duo")
            message[0] = "* Penilla looks like she might#  crack under the pressure.";
        else if (battle_enemy_name == "know cone insomnitot duo")
            message[0] = "* Insomnitot is hoping it'll feel#  better in the morning.";
        else if (battle_enemy_name == "frostermit know cone duo")
            message[0] = "* Know Cone is quite enraged.";
        else if (battle_enemy_name == "cactony slither duo")
            message[0] = "* Sir Slither tries to keep#  whatever's in his pot from#  spilling.";
        else if (battle_enemy_name == "jandroid goosic duo")
            message[0] = "* Goosic struggles to keep#  dancing.";
        else if (battle_enemy_name == "jandroid duo")
            message[0] = "* Jandroid doesn't seem to know#  what they're doing anymore.";
    }
}
