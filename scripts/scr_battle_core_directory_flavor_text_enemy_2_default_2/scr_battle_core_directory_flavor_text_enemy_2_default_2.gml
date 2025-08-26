function scr_battle_core_directory_flavor_text_enemy_2_default_2()
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
            message[0] = "* Penilla scraps her drawing and#  starts over.";
        else if (battle_enemy_name == "sweet corn penilla duo")
            message[0] = "* Penilla scraps her drawing and#  starts over.";
        else if (battle_enemy_name == "crispy scroll penilla duo")
            message[0] = "* Penilla scraps her drawing and#  starts over.";
        else if (battle_enemy_name == "know cone insomnitot duo")
            message[0] = "* The smell of french fries wafts#  past you.";
        else if (battle_enemy_name == "frostermit know cone duo")
            message[0] = "* Know Cone starts doing a#  primitive dance.";
        else if (battle_enemy_name == "trihecta separated")
            message[0] = "* Hec seems slightly relieved#  that the others are on the#  ground.";
        else if (battle_enemy_name == "dunebud duo")
            message[0] = "* One Dunebud pats the other's#  head. They both lovingly grin.";
        else if (battle_enemy_name == "cactony slither duo")
            message[0] = "* Sir Slither lost access to his#  bank account. He wonders if he#  could borrow yours.";
        else if (battle_enemy_name == "jandroid goosic duo")
            message[0] = "* Goosic begins spinning in#  circles.";
    }
}
