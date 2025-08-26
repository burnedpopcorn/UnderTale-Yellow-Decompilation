function scr_battle_core_directory_flavor_text_enemy_2_default_1()
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
            message[0] = "* Penilla is drawing a practice#  sketch of you.";
        else if (battle_enemy_name == "sweet corn penilla duo")
            message[0] = "* Penilla is drawing a practice#  sketch of you.";
        else if (battle_enemy_name == "crispy scroll penilla duo")
            message[0] = "* Penilla is drawing a practice#  sketch of you.";
        else if (battle_enemy_name == "know cone insomnitot duo")
            message[0] = "* The air is crisp.";
        else if (battle_enemy_name == "frostermit know cone duo")
            message[0] = "* Know Cone is pointing excitedly#  at something in the distance.#* It looks to be a tree.";
        else if (battle_enemy_name == "trihecta separated")
            message[0] = "* Hec is happy to be on their own.";
        else if (battle_enemy_name == "dunebud duo")
            message[0] = "* The Dunebud's are spilling#  over each other.";
        else if (battle_enemy_name == "cactony slither duo")
            message[0] = "* Sir Slither does his iconic#  side-eyed smirk.";
        else if (battle_enemy_name == "jandroid goosic duo")
            message[0] = "* Goosic slowly scratches a#  record with its needle. The#  sound is unbearable.";
        else if (battle_enemy_name == "jandroid duo")
            message[0] = "* The Jandroids are trying to#  harmonize.";
    }
}
