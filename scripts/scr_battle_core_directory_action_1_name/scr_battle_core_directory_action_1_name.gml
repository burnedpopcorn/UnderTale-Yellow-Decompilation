function scr_battle_core_directory_action_1_name(argument0, argument1)
{
    var battle_enemy_name, act_number, game_mode, turns_passed;
    
    if (global.battling_boss == true)
    {
        battle_enemy_name = global.battle_enemy_name;
        
        if (global.action_1_important == true)
            draw_set_color(global.action_1_color);
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
                
                if (global.action_1_important == true)
                    draw_set_color(global.action_1_color);
                else
                    draw_set_color(c_white);
                
                break;
            
            case 2:
                battle_enemy_name = global.battle_enemy_name_2;
                
                if (global.action_1_important_2 == true)
                    draw_set_color(global.action_1_color_2);
                else
                    draw_set_color(c_white);
                
                break;
            
            case 3:
                battle_enemy_name = global.battle_enemy_name_3;
                
                if (global.action_1_important_3 == true)
                    draw_set_color(global.action_1_color_3);
                else
                    draw_set_color(c_white);
                
                break;
            
            default:
                battle_enemy_name = global.battle_enemy_name_1;
                
                if (global.action_1_important == true)
                {
                    draw_set_color(global.action_1_color);
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
            battle_menu_option_string = "* Talk";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "ms mettaton")
        {
            turns_passed = global.turns_passed;
            
            if (turns_passed < 4)
            {
                battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
                battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
                battle_menu_option_string = "* Whoops!";
                script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            }
            else if (turns_passed == 4)
            {
                battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
                battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
                battle_menu_option_string = "* Charm";
                script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            }
            else if (turns_passed > 4)
            {
                battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
                battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
                battle_menu_option_string = "* Cry";
                script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            }
        }
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "froggit intro")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Compliment";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "flier a" || battle_enemy_name == "flier b" || battle_enemy_name == "flier c")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Comfort";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "penilla a" || battle_enemy_name == "penilla b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Compliment";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "sweet corn a" || battle_enemy_name == "sweet corn b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Lick";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "crispy scroll a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Transform";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "rorrim a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Adjust";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "decibat")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Talk";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "dalv")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Talk";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "micro froggit")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Compliment";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "insomnitot a" || battle_enemy_name == "insomnitot b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Sing";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "know cone a" || battle_enemy_name == "know cone b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Encourage";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "frostermit a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Inspect";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "trihecta")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Push";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "tri" || battle_enemy_name == "hec" || battle_enemy_name == "ta")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Laugh";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Rush";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Apologize";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "dunebud a" || battle_enemy_name == "dunebud b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Pat";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "cactony a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Touch";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "slither a" || battle_enemy_name == "slither b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Challenge";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "bowll a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Clean";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "el bailador")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            
            if (global.route != 3)
                battle_menu_option_string = "* Twirl";
            else
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
                    battle_menu_option_string = "* Flatter";
                    break;
                
                case 2:
                    battle_menu_option_string = "* Accept";
                    break;
                
                case 3:
                    battle_menu_option_string = "* Flatter";
                    break;
            }
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "dummy training pacifist")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Talk";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Resist";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "starlo")
        {
            if (global.attack_cycle < 10)
            {
                battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
                battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
                battle_menu_option_string = "* Struggle";
                script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            }
            else if (global.turns_passed >= 18)
            {
                battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
                battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
                battle_menu_option_string = "* Surrender";
                script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            }
            else
            {
                battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
                battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
                battle_menu_option_string = "* Spin";
                script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
            }
        }
        else if (battle_enemy_name == "ed" || battle_enemy_name == "moray" || battle_enemy_name == "ace" || battle_enemy_name == "mooch")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Steady";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "jandroid a" || battle_enemy_name == "jandroid b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Question";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "tellyvis a")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Watch";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "goosic a" || battle_enemy_name == "goosic b")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Vibe";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "sousborg")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            
            switch (global.enemy_mode)
            {
                case 0:
                    battle_menu_option_string = "* Crack";
                    break;
                
                case 1:
                    battle_menu_option_string = "* Boil";
                    break;
                
                case 2:
                    battle_menu_option_string = "* Refrigerate";
                    break;
            }
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "axis")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Brace";
            
            if (global.action_1_important == true)
            {
                if (global.route == 1)
                    battle_menu_option_string = "* Compliment";
                else if (global.route == 2)
                    battle_menu_option_string = "* Plan B";
            }
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "macro froggit")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            
            if (global.turns_passed == 0)
                battle_menu_option_string = "* Compliment";
            else
                battle_menu_option_string = "* Frog";
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "axis genocide")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Push";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "guardener")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Gather";
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "flowey")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            
            switch (global.flowey_act[0])
            {
                case 0:
                    battle_menu_option_string = "* Forget";
                    break;
                
                case 1:
                    battle_menu_option_string = "* Scream";
                    break;
                
                case 2:
                    battle_menu_option_string = "* Suffocate";
                    break;
                
                case 3:
                    battle_menu_option_string = "* Hide";
                    break;
                
                case 4:
                    battle_menu_option_string = "* Persist";
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
                    battle_menu_option_string = "* Negotiate";
                    break;
                
                default:
                    battle_menu_option_string = "* Hope";
                    break;
            }
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            battle_menu_option_x = obj_dialogue_box_battle.x + argument0;
            battle_menu_option_y = obj_dialogue_box_battle.y + argument1;
            battle_menu_option_string = "* Remind";
            
            if (global.hotland_flag[9] >= 2)
                battle_menu_option_string = "* Focus";
            
            script_execute(scr_draw_text_effect_twitchy_textbox_battle_menu_options);
        }
    }
}
