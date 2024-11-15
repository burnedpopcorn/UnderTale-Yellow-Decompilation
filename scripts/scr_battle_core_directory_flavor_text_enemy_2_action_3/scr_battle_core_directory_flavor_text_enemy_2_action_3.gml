function scr_battle_core_directory_flavor_text_enemy_2_action_3()
{
    var action_3_selected_count_2, battle_enemy_name, game_mode;
    
    action_3_selected_count_2 = global.action_3_selected_count_2;
    battle_enemy_name = global.battle_enemy_name;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "know cone insomnitot duo")
            message[0] = "* Insomnitot struggles to#  maintain consciousness.";
    }
}
