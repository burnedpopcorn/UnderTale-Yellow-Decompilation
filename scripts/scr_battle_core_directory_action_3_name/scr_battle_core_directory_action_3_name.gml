function scr_battle_core_directory_action_3_name(argument0, argument1)
{
    var battle_enemy_name, act_number, game_mode, turns_passed;
    
    if (global.battling_boss == true)
    {
        battle_enemy_name = global.battle_enemy_name;
        
        if (global.action_3_important == true)
            draw_set_color(global.action_3_color);
        else
            draw_set_color(c_white);
    }
    else
    {
        act_number = global.act_number;
        
        switch (act_number)
        {
            case 1:
                battle_enemy_name = global.battle_enemy_name_1;
                
                if (global.action_3_important == true)
                    draw_set_color(global.action_3_color);
                else
                    draw_set_color(c_white);
                
                break;
            
            case 2:
                battle_enemy_name = global.battle_enemy_name_2;
                
                if (global.action_3_important_2 == true)
                    draw_set_color(global.action_3_color_2);
                else
                    draw_set_color(c_white);
                
                break;
            
            case 3:
                battle_enemy_name = global.battle_enemy_name_3;
                
                if (global.action_3_important_3 == true)
                    draw_set_color(global.action_3_color_3);
                else
                    draw_set_color(c_white);
                
                break;
            
            default:
                battle_enemy_name = global.battle_enemy_name_1;
                
                if (global.action_3_important == true)
                {
                    draw_set_color(global.action_3_color);
                    break;
                }
                
                draw_set_color(c_white);
        }
    }
    
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Joke";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "ms mettaton")
        {
            turns_passed = global.turns_passed;
            
            if (turns_passed > 4)
            {
                battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
                battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
                battle_menu_option_string = "* Envy";
                script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            }
        }
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier a" || battle_enemy_name == "flier b" || battle_enemy_name == "flier c")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Criticize";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "sweet corn a" || battle_enemy_name == "sweet corn b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Gift";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "crispy scroll a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Judge";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "rorrim a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Smile";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "decibat")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Shoo";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "micro froggit")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Stomp";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "insomnitot a" || battle_enemy_name == "insomnitot b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Hypnotize";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "know cone a" || battle_enemy_name == "know cone b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Berate";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "frostermit a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Compliment";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "trihecta")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Climb";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Insult";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "dunebud a" || battle_enemy_name == "dunebud b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Shoo";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "slither a" || battle_enemy_name == "slither b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Doubt";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "bowll a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Console";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "el bailador")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Stare";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "flower girls")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            
            switch (global.dunes_flag[31])
            {
                case 1:
                    battle_menu_option_string = "* Insult";
                    break;
                
                case 2:
                    battle_menu_option_string = "* Deny";
                    break;
                
                case 3:
                    battle_menu_option_string = "* Insult";
                    break;
            }
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Mock";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "starlo")
        {
            if (global.attack_cycle < 10)
            {
                battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
                battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
                battle_menu_option_string = "* Bite";
                script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            }
            else
            {
                battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
                battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
                battle_menu_option_string = "* Focus";
                script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            }
        }
        else if (battle_enemy_name == "ed" || battle_enemy_name == "moray" || battle_enemy_name == "ace" || battle_enemy_name == "mooch")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Smirk";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "tellyvis a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Signal";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "jandroid a" || battle_enemy_name == "jandroid b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Analyze";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "goosic a" || battle_enemy_name == "goosic b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Needle";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "sousborg")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            
            switch (global.enemy_mode)
            {
                case 1:
                    battle_menu_option_string = "* Bake";
                    break;
                
                case 2:
                    battle_menu_option_string = "* Season";
                    break;
            }
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "guardener")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Antagonize";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "axis")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Cool";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "axis genocide")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Toughen";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "macro froggit")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            
            if (global.turns_passed == 0)
                battle_menu_option_string = "* Stomp";
            else
                battle_menu_option_string = "* Frog";
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "flowey")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            
            switch (global.flowey_act[2])
            {
                case 0:
                    battle_menu_option_string = "* Stress";
                    break;
                
                case 1:
                    battle_menu_option_string = "* Beg";
                    break;
                
                case 2:
                    battle_menu_option_string = "* Weaken";
                    break;
                
                case 3:
                    battle_menu_option_string = "* Decay";
                    break;
                
                case 4:
                    battle_menu_option_string = "* Endure";
                    break;
            }
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "ceroba")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            
            switch (global.hotland_flag[2])
            {
                case 0:
                    battle_menu_option_string = "* Scowl";
                    break;
                
                default:
                    battle_menu_option_string = "* Remember";
                    break;
            }
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
    }
}
