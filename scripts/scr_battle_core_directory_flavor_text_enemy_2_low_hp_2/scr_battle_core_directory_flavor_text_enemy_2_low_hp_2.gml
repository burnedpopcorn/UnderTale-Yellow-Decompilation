function scr_battle_core_directory_flavor_text_enemy_2_low_hp_2()
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
            message[0] = "* Penilla tries to bite the#  bullet.";
        else if (battle_enemy_name == "sweet corn penilla duo")
            message[0] = "* Penilla tries to bite the#  bullet.";
        else if (battle_enemy_name == "crispy scroll penilla duo")
            message[0] = "* Penilla tries to bite the#  bullet.";
        else if (battle_enemy_name == "know cone insomnitot duo")
            message[0] = "* Insomnitot is drifting in and#  out of consciousness.";
        else if (battle_enemy_name == "frostermit know cone duo")
            message[0] = "* Know Cone stomps his feet in a#  huff.";
        else if (battle_enemy_name == "cactony slither duo")
            message[0] = "* Sir Slither can't slither away#  from this.";
    }
}
