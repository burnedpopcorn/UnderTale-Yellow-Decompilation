function scr_battle_core_directory_flavor_text_enemy_2_dead()
{
    var battle_enemy_name = global.battle_enemy_name;
    var enemy_count = global.enemy_count;
    var enemy_mode = global.enemy_mode;
    var enemy_mode_2 = global.enemy_mode_2;
    
    if (enemy_count >= 3)
        var enemy_mode_3 = global.enemy_mode_3;
    
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier penilla duo")
            message[0] = "* Penilla frantically scraps her#  flier sketch.";
        else if (battle_enemy_name == "sweet corn penilla duo")
            message[0] = "* The sweet vibes vanish.";
        else if (battle_enemy_name == "crispy scroll penilla duo")
            message[0] = "* Penilla finishes her anime#  drawing in honor of Crispy.";
        
        if (battle_enemy_name == "know cone insomnitot duo")
            message[0] = "* Insomnitot thinks it was a#  dream.";
        else if (battle_enemy_name == "frostermit know cone duo")
            message[0] = "* Know Cone face-plants into#  the ground and yells.";
        else if (battle_enemy_name == "dunebud duo")
            message[0] = "* The remaining Dunebud glances#  around, looking for their#  partner.";
        else if (battle_enemy_name == "cactony slither duo")
            message[0] = "* Sir Slither pivots their full#  attention to you.";
        else if (battle_enemy_name == "jandroid goosic duo")
            message[0] = "* Goosic instantly forgets about#  Jandroid.";
        else if (battle_enemy_name == "jandroid duo")
            message[0] = "* The Jandroid begins mopping#  the wreckage.";
    }
}
