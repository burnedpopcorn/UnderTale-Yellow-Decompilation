function scr_battle_core_directory_flavor_text_enemy_2_default_3()
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
            message[0] = "* The battlefield is covered in#  eraser shavings.";
        else if (battle_enemy_name == "sweet corn penilla duo")
            message[0] = "* The battlefield is covered in#  eraser shavings.";
        else if (battle_enemy_name == "crispy scroll penilla duo")
            message[0] = "* The battlefield is covered in#  eraser shavings.";
        else if (battle_enemy_name == "know cone insomnitot duo")
            message[0] = "* Insomnitot catches itself#  nodding off.";
        else if (battle_enemy_name == "frostermit know cone duo")
            message[0] = "* Know Cone is yelling random#  noises that sound like they#  could be a made-up language.";
        else if (battle_enemy_name == "dunebud duo")
            message[0] = "* One Dunebud shapes the other#  into a pyramid.";
        else if (battle_enemy_name == "cactony slither duo")
            message[0] = "* Sir Slither compliments#  Cactony's bullet patterns.";
        else if (battle_enemy_name == "jandroid goosic duo")
            message[0] = "* Goosic blasts battle music from#  its beak.";
    }
}
