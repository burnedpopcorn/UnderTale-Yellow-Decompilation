function scr_battle_core_directory_flavor_text_enemy_1_dead()
{
    var battle_enemy_name = global.battle_enemy_name;
    var enemy_count = global.enemy_count;
    var enemy_mode = global.enemy_mode;
    
    if (enemy_count >= 3)
    {
        var enemy_mode_2 = global.enemy_mode_2;
        var enemy_mode_3 = global.enemy_mode_3;
    }
    else if (enemy_count >= 2)
    {
        var enemy_mode_2 = global.enemy_mode_2;
    }
    
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier trio")
            message[0] = "* The Fliers aren't having a#  mid-life crisis, they're having#  an end-life crisis.";
        else if (battle_enemy_name == "flier penilla duo")
            message[0] = "* Flier is desperately looking#  for a new friend.";
        else if (battle_enemy_name == "sweet corn duo")
            message[0] = "* Sweet Corn is oblivious to her#  surroundings.";
        else if (battle_enemy_name == "sweet corn penilla duo")
            message[0] = "* Sweet Corn didn't notice your#  action.";
        else if (battle_enemy_name == "crispy scroll penilla duo")
            message[0] = "* Crispy Scroll now has a tragic#  backstory.";
        else if (battle_enemy_name == "insomnitot duo")
            message[0] = "* Insomnitot is too tired to find#  the right words to honor its#  fallen friend.";
        else if (battle_enemy_name == "know cone insomnitot duo")
            message[0] = "* Know Cone stomps the ground in#  a fit of rage.";
        else if (battle_enemy_name == "frostermit know cone duo")
            message[0] = "* Frostermit doesn't know what#  to do.";
        else if (battle_enemy_name == "dunebud duo")
            message[0] = "* The remaining Dunebud glances#  around, looking for their#  partner.";
        else if (battle_enemy_name == "cactony slither duo")
            message[0] = "* Cactony is lost in a sea of#  mixed emotions.";
        else if (battle_enemy_name == "jandroid goosic duo")
            message[0] = "* Jandroid will never forgive#  you as long as you walk the#  earth.";
        else if (battle_enemy_name == "jandroid duo")
            message[0] = "* The Jandroid begins mopping#  the wreckage.";
    }
}
