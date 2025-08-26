function scr_battle_core_directory_flavor_text_enemy_2_default_4()
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
            message[0] = "* Penilla signs her sketch and#  starts a new one.";
        else if (battle_enemy_name == "sweet corn penilla duo")
            message[0] = "* Penilla signs her sketch and#  starts a new one.";
        else if (battle_enemy_name == "crispy scroll penilla duo")
            message[0] = "* Penilla signs her sketch and#  starts a new one.";
        else if (battle_enemy_name == "know cone insomnitot duo")
            message[0] = "* Insomnitot is trying to shake#  the sleepiness away.";
        else if (battle_enemy_name == "frostermit know cone duo")
            message[0] = "* Know Cone is banging a rock#  against a fallen branch.#* The branch breaks.";
        else if (battle_enemy_name == "dunebud duo")
            message[0] = "* You begin to grow thirsty at#  the sight of the Dunebud's.";
        else if (battle_enemy_name == "cactony slither duo")
            message[0] = "* You hear some jingling as Sir#  Slither rattles inside his pot.";
        else if (battle_enemy_name == "jandroid goosic duo")
            message[0] = "* Your eardrums do not appreciate#  the current situation.";
    }
}
