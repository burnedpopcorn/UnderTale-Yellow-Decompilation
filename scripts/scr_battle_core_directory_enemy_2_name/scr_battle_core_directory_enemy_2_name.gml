function scr_battle_core_directory_enemy_2_name(argument0, argument1)
{
    var battle_enemy_name, game_mode, battle_enemy_name_2;
    
    battle_enemy_name = global.battle_enemy_name;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier trio")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Flier B";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Penilla";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "sweet corn duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Sweet Corn B";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "sweet corn penilla duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Penilla";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Penilla";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Insomnitot B";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Insomnitot";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Know Cone";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "trihecta separated")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Hec";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "dunebud duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Dunebud B";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "cactony slither duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Sir Slither";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "feisty five")
        {
            battle_enemy_name_2 = global.battle_enemy_name_2;
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            
            switch (battle_enemy_name_2)
            {
                case "ed":
                    battle_menu_option_string = "* Ed";
                    break;
                
                case "moray":
                    battle_menu_option_string = "* Moray";
                    break;
                
                case "ace":
                    battle_menu_option_string = "* Ace";
                    break;
                
                case "mooch":
                    battle_menu_option_string = "* Mooch";
                    break;
                
                default:
                    battle_menu_option_string = "* Feisty Four";
            }
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(battle_menu_option_string);
        }
        else if (battle_enemy_name == "jandroid goosic duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Goosic";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "jandroid duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Jandroid B";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
    }
}
