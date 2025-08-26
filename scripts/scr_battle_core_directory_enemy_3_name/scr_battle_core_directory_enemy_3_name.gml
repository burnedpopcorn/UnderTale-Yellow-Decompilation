function scr_battle_core_directory_enemy_3_name(arg0, arg1)
{
    var battle_enemy_name = global.battle_enemy_name;
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier trio")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Flier C";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "trihecta separated")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Ta";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
    }
}
