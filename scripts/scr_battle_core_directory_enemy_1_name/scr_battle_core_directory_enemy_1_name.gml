function scr_battle_core_directory_enemy_1_name(argument0, argument1)
{
    var battle_enemy_name, game_mode, ms_mettaton_transformed, battle_enemy_name_1;
    
    battle_enemy_name = global.battle_enemy_name;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Craniex";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "ms mettaton")
        {
            ms_mettaton_transformed = global.ms_mettaton_transformed;
            
            if (ms_mettaton_transformed == false)
            {
                battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
                battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
                battle_menu_option_string = "* Ms. Mettaton";
                script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
                global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
            }
            else if (ms_mettaton_transformed == true)
            {
                battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
                battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
                battle_menu_option_string = "* Ms. Mettaton EX";
                script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
                global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
            }
        }
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "froggit intro")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Froggit";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "flier solo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Flier";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "flier trio")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Flier A";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "penilla solo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Penilla";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Flier";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "sweet corn solo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Sweet Corn";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "sweet corn duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Sweet Corn A";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "sweet corn penilla duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Sweet Corn";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "crispy scroll solo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Crispy Scroll";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Crispy Scroll";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "rorrim solo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Rorrim";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "decibat")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Decibat";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "dalv")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Dalv";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "micro froggit")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Micro Froggit";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "insomnitot solo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Insomnitot";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Insomnitot A";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "know cone solo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Know Cone";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Know Cone";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "frostermit solo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Frostermit";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Frostermit";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "trihecta together")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Trihecta";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "trihecta separated")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Tri";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "martlet pacifist" || battle_enemy_name == "martlet genocide")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Martlet";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "dunebud solo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Dunebud";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "dunebud duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Dunebud A";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "cactony solo" || battle_enemy_name == "cactony slither duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Cactony";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "slither solo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Sir Slither";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "bowll solo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Bowll";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "el bailador")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* El Bailador";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "dummy training pacifist")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Dummy";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "flower girls")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            
            switch (global.dunes_flag[31])
            {
                case 1:
                    battle_menu_option_string = "* Violetta";
                    break;
                
                case 2:
                    battle_menu_option_string = "* Pedla";
                    break;
                
                case 3:
                    battle_menu_option_string = "* Rosa";
                    break;
            }
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Ceroba";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "starlo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Starlo";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "feisty five")
        {
            battle_enemy_name_1 = global.battle_enemy_name_1;
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            
            switch (battle_enemy_name_1)
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
        else if (battle_enemy_name == "tellyvis")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Telly-Vis";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "jandroid" || battle_enemy_name == "jandroid goosic duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Jandroid";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "jandroid duo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Jandroid A";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "goosic")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Goosic";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "sousborg")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Sousborg";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "axis" || battle_enemy_name == "axis genocide")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Axis";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "macro froggit")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            
            if (global.turns_passed == 0)
                battle_menu_option_string = "* Micro Froggit";
            else
                battle_menu_option_string = "* MACRO FROGGIT";
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "guardener")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Guardener";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "flowey")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Flowey";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "ceroba")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Ceroba";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Martlet";
            
            if (instance_exists(obj_battle_fmartlet_flowey))
                battle_menu_option_string = "* Flowey";
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            global.battle_enemy_name_string_width = string_width(string_hash_to_newline(battle_menu_option_string));
        }
    }
}
