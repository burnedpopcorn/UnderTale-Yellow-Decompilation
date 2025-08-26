function scr_battle_core_directory_flavor_text_enemy_2_default_6()
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
            message[0] = "* Penilla rolls her eyes.";
        else if (battle_enemy_name == "sweet corn penilla duo")
            message[0] = "* Penilla is overwhelmed with#  cuteness.";
        else if (battle_enemy_name == "crispy scroll penilla duo")
            message[0] = "* Penilla tries to draw in an anime artstyle to make Crispy Scroll calm down.";
        else if (battle_enemy_name == "know cone insomnitot duo")
            message[0] = "* Insomnitot kicks a rock.#* Know Cone retrieves it with his mouth.";
        else if (battle_enemy_name == "cactony slither duo")
            message[0] = "* Cactony would rather be alone#  right now.";
        else if (battle_enemy_name == "jandroid goosic duo")
            message[0] = "* The duo's robotic voices grate#  on your ears like rusty saw#  blades.";
    }
}
