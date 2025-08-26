function scr_battle_core_directory_action_2_name(arg0, arg1)
{
    var battle_enemy_name;
    
    if (global.battling_boss == true)
    {
        battle_enemy_name = global.battle_enemy_name;
        
        if (global.action_2_important == true)
            draw_set_color(global.action_2_color);
        else
            draw_set_color(c_white);
    }
    else
    {
        var act_number = global.act_number;
        
        switch (act_number)
        {
            case 1:
                battle_enemy_name = global.battle_enemy_name_1;
                
                if (global.action_2_important == true)
                    draw_set_color(global.action_2_color);
                else
                    draw_set_color(c_white);
                
                break;
            
            case 2:
                battle_enemy_name = global.battle_enemy_name_2;
                
                if (global.action_2_important_2 == true)
                    draw_set_color(global.action_2_color_2);
                else
                    draw_set_color(c_white);
                
                break;
            
            case 3:
                battle_enemy_name = global.battle_enemy_name_3;
                
                if (global.action_2_important_3 == true)
                    draw_set_color(global.action_2_color_3);
                else
                    draw_set_color(c_white);
                
                break;
            
            default:
                battle_enemy_name = global.battle_enemy_name_1;
                
                if (global.action_2_important == true)
                {
                    draw_set_color(global.action_2_color);
                    break;
                }
                
                draw_set_color(c_white);
        }
    }
    
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Insult";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "ms mettaton")
        {
            var turns_passed = global.turns_passed;
            
            if (turns_passed > 4)
            {
                battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
                battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
                battle_menu_option_string = "* Ogle";
                script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            }
        }
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "froggit intro")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Threat";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "flier a" || battle_enemy_name == "flier b" || battle_enemy_name == "flier c")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Compliment";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "penilla a" || battle_enemy_name == "penilla b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Distract";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "sweet corn a" || battle_enemy_name == "sweet corn b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Hug";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "crispy scroll a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Yell";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "rorrim a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Critique";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "decibat")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Watch";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "dalv")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Handshake";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "micro froggit")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Threaten";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "insomnitot a" || battle_enemy_name == "insomnitot b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Lecture";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "know cone a" || battle_enemy_name == "know cone b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Educate";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "frostermit a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Dance";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "trihecta")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Pull";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Ignore";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Ignore";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Endure";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "dunebud a" || battle_enemy_name == "dunebud b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Jiggle";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "cactony a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Avoid";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "slither a" || battle_enemy_name == "slither b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Believe";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "bowll a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Taunt";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "el bailador")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Smile";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "flower girls")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            
            switch (global.dunes_flag[31])
            {
                case 1:
                    battle_menu_option_string = "* Encourage";
                    break;
                
                case 2:
                    battle_menu_option_string = "* Flatter";
                    break;
                
                case 3:
                    battle_menu_option_string = "* Inquire";
                    break;
            }
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Calm";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "starlo")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Glare";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "ed" || battle_enemy_name == "moray" || battle_enemy_name == "ace" || battle_enemy_name == "mooch")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Distract";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "tellyvis a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Nap";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "jandroid a" || battle_enemy_name == "jandroid b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Clean";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "goosic a" || battle_enemy_name == "goosic b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Ignore";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "sousborg")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            
            switch (global.enemy_mode)
            {
                case 0:
                    battle_menu_option_string = "* Criticize";
                    break;
                
                case 1:
                    battle_menu_option_string = "* Fry";
                    break;
                
                case 2:
                    battle_menu_option_string = "* Pet";
                    break;
            }
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "axis")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Scrutinize";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "axis genocide")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Taunt";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "macro froggit")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            
            if (global.turns_passed == 0)
                battle_menu_option_string = "* Threaten";
            else
                battle_menu_option_string = "* Frog";
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "guardener")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            battle_menu_option_string = "* Plead";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "flowey")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            
            switch (global.flowey_act[1])
            {
                case 0:
                    battle_menu_option_string = "* Frown";
                    break;
                
                case 1:
                    battle_menu_option_string = "* Plead";
                    break;
                
                case 2:
                    battle_menu_option_string = "* Weep";
                    break;
                
                case 3:
                    battle_menu_option_string = "* Whisper";
                    break;
                
                case 4:
                    battle_menu_option_string = "* Hope";
                    break;
            }
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "ceroba")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + arg0;
            battle_menu_option_y = obj_dialogue_box_battle.y + arg1;
            
            switch (global.hotland_flag[2])
            {
                case 0:
                    battle_menu_option_string = "* Calm";
                    break;
                
                default:
                    battle_menu_option_string = "* Endure";
                    break;
            }
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
    }
}
