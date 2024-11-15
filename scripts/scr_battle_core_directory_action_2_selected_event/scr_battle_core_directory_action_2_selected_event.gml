function scr_battle_core_directory_action_2_selected_event()
{
    var event_check, fog_sound, power_sound, act_number;
    
    event_check = false;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
        {
            global.action_1_selected_count = 0;
            global.action_2_selected_count += 1;
            global.action_3_selected_count = 0;
            global.enemy_sparing = false;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "ms mettaton")
        {
            global.enemy_sparing = false;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "froggit intro")
        {
            global.important_cutscene = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "flier a")
        {
            global.action_1_selected_count = 0;
            
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            global.action_3_selected_count = 0;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "flier b")
        {
            global.action_1_selected_count_2 = 0;
            
            if (global.action_2_selected_count_2 < 1)
                global.action_2_selected_count_2 += 1;
            
            global.action_3_selected_count_2 = 0;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "flier c")
        {
            global.action_1_selected_count_3 = 0;
            
            if (global.action_2_selected_count_3 < 1)
                global.action_2_selected_count_3 += 1;
            
            global.action_3_selected_count_3 = 0;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "penilla a")
        {
            global.action_1_selected_count = 0;
            
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            if (global.action_2_selected_count == 1)
                global.enemy_sparing = true;
            
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "penilla b")
        {
            global.action_1_selected_count_2 = 0;
            
            if (global.action_2_selected_count_2 < 1)
                global.action_2_selected_count_2 += 1;
            
            if (global.action_2_selected_count_2 == 1)
                global.enemy_sparing_2 = true;
            
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "sweet corn a")
        {
            global.action_1_selected_count = 0;
            
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            global.action_3_selected_count = 0;
            
            if (global.action_2_selected_count == 1)
                global.enemy_sparing = true;
            
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "sweet corn b")
        {
            global.action_1_selected_count_2 = 0;
            
            if (global.action_2_selected_count_2 < 1)
                global.action_2_selected_count_2 += 1;
            
            global.action_3_selected_count_2 = 0;
            
            if (global.action_2_selected_count_2 == 1)
                global.enemy_sparing_2 = true;
            
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "crispy scroll a")
        {
            global.action_1_selected_count = 0;
            
            if (global.action_2_selected_count < 3)
                global.action_2_selected_count += 1;
            
            global.action_3_selected_count = 0;
            
            if (global.action_2_selected_count >= 2)
                global.enemy_sparing = true;
            
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "rorrim a")
        {
            global.action_1_selected_count = 0;
            
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            if (global.action_2_selected_count >= 1 && global.action_3_selected_count >= 1)
            {
                global.enemy_sparing = true;
                global.action_2_color = c_white;
            }
            
            global.action_3_selected_count = 0;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "decibat")
        {
            if (global.action_2_selected_count < 5)
                global.action_2_selected_count += 1;
            
            if (global.enemy_sparing == false)
            {
                global.action_1_selected_count = 0;
                global.action_3_selected_count = 0;
            }
            
            if (global.enemy_low_hp == false)
            {
                if (global.action_2_selected_count == 1)
                    audio_sound_gain(mus_decibat_yellow, 0.8, 1500);
                else if (global.action_2_selected_count == 2)
                    audio_sound_gain(mus_decibat_yellow, 0.6, 1500);
                else if (global.action_2_selected_count == 3)
                    audio_sound_gain(mus_decibat_yellow, 0.4, 1500);
                else if (global.action_2_selected_count == 4)
                    audio_sound_gain(mus_decibat_yellow, 0.2, 1500);
                
                if (global.action_2_selected_count >= 5)
                {
                    audio_sound_gain(mus_decibat_yellow, 0, 1500);
                    script_execute(scr_start_enemy_sparing_decibat);
                }
                else
                {
                    global.enemy_attacking = true;
                }
            }
            else
            {
                global.enemy_attacking = true;
            }
            
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "dalv")
        {
            switch (global.enemy_mode)
            {
                case 0:
                    if (global.enemy_sparing == true)
                        script_execute(scr_start_enemy_no_attack_dalv);
                    else if (global.action_2_important == true)
                        script_execute(scr_start_enemy_sparing_dalv);
                    else
                        global.enemy_attacking = true;
                    
                    instance_destroy();
                    exit;
                    break;
                
                case 1:
                case 2:
                    if (global.enemy_sparing == true || global.action_2_important == true)
                        script_execute(scr_start_enemy_no_attack_dalv);
                    else
                        global.enemy_attacking = true;
                    
                    instance_destroy();
                    exit;
                    break;
            }
        }
        else if (battle_enemy_name == "micro froggit")
        {
            global.action_1_selected_count = 0;
            
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            global.action_3_selected_count = 0;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "insomnitot a")
        {
            global.action_1_selected_count = 0;
            
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            global.action_3_selected_count = 0;
            
            if (global.enemy_sparing == true && global.enemy_low_hp == false)
            {
                if (global.battle_enemy_name == "insomnitot solo")
                {
                    script_execute(scr_start_enemy_no_attack_insomnitot_solo);
                }
                else if (global.battle_enemy_name == "insomnitot duo")
                {
                    if ((global.enemy_sparing_2 == true && global.enemy_low_hp_2 == false) || (global.enemy_dead_2 + global.enemy_spared_2) >= 1)
                        script_execute(scr_start_enemy_no_attack_insomnitot_duo);
                    else
                        global.enemy_attacking = true;
                }
                else
                {
                    global.enemy_attacking = true;
                }
            }
            else
            {
                global.enemy_attacking = true;
            }
            
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "insomnitot b")
        {
            global.action_1_selected_count_2 = 0;
            
            if (global.action_2_selected_count_2 < 1)
                global.action_2_selected_count_2 += 1;
            
            global.action_3_selected_count_2 = 0;
            
            if (global.enemy_sparing_2 == true && global.enemy_low_hp_2 == false)
            {
                if (global.battle_enemy_name == "insomnitot duo")
                {
                    if ((global.enemy_sparing == true && global.enemy_low_hp == false) || (global.enemy_dead + global.enemy_spared) >= 1)
                        script_execute(scr_start_enemy_no_attack_insomnitot_duo);
                    else
                        global.enemy_attacking = true;
                }
                else if (global.battle_enemy_name == "know cone insomnitot duo")
                {
                    if ((global.enemy_dead + global.enemy_spared) >= 1)
                        script_execute(scr_start_enemy_no_attack_know_cone_insomnitot_duo);
                    else
                        global.enemy_attacking = true;
                }
                else
                {
                    global.enemy_attacking = true;
                }
            }
            else
            {
                global.enemy_attacking = true;
            }
            
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "know cone a")
        {
            global.action_1_selected_count = 0;
            
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            global.action_3_selected_count = 0;
            
            if (global.action_2_selected_count == 1)
                global.enemy_sparing = true;
            
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "know cone b")
        {
            global.action_1_selected_count_2 = 0;
            
            if (global.action_2_selected_count_2 < 1)
                global.action_2_selected_count_2 += 1;
            
            global.action_3_selected_count_2 = 0;
            
            if (global.action_2_selected_count_2 == 1)
                global.enemy_sparing_2 = true;
            
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "frostermit a")
        {
            global.action_1_selected_count = 0;
            
            if (global.action_2_selected_count < 3)
                global.action_2_selected_count += 1;
            
            if (global.action_2_selected_count >= 2)
                global.enemy_sparing = true;
            
            if (global.action_2_selected_count == 1)
            {
                if (global.enemy_low_hp == false && global.enemy_mode == 0)
                {
                    with (obj_frostermit_body_a)
                    {
                        getting_out = true;
                        sprite_index = spr_frostermit_body_open;
                        image_speed = 0.4;
                        image_index = 0;
                    }
                }
                else
                {
                    global.enemy_attacking = true;
                }
            }
            
            if (global.action_2_selected_count != 1)
                global.enemy_attacking = true;
            
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "trihecta")
        {
            if (global.action_1_selected_count >= 1)
                global.action_2_selected_count = 0;
            else
                global.action_2_selected_count += 1;
            
            if (global.action_2_selected_count >= 2)
            {
                if (global.enemy_low_hp == false)
                {
                    with (obj_trihecta_together)
                    {
                        tipping_number = 2;
                        sprite_index = spr_trihecta_falling;
                        image_speed = 1/3;
                        image_index = 0;
                        event_user(0);
                    }
                }
                else
                {
                    global.enemy_attacking = true;
                }
            }
            else if (global.action_2_selected_count == 1)
            {
                if (global.enemy_low_hp == false)
                {
                    with (obj_trihecta_together)
                    {
                        tipping_number = 1;
                        sprite_index = spr_trihecta_tipping;
                        image_speed = 1/3;
                        image_index = 0;
                    }
                }
            }
            else if (global.action_2_selected_count == 0)
            {
                if (global.enemy_low_hp == false)
                {
                    with (obj_trihecta_together)
                    {
                        tipping_number = 0;
                        sprite_index = spr_trihecta_balanced;
                        image_speed = 1/3;
                        image_index = 0;
                    }
                }
            }
            
            global.action_1_selected_count = 0;
            global.action_3_selected_count = 0;
            
            if (global.action_2_selected_count != 2)
                global.enemy_attacking = true;
            
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "tri")
        {
            global.action_1_selected_count = 0;
            
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            global.action_3_selected_count = 0;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "hec")
        {
            global.action_1_selected_count_2 = 0;
            
            if (global.action_2_selected_count_2 < 1)
                global.action_2_selected_count_2 += 1;
            
            global.action_3_selected_count_2 = 0;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "ta")
        {
            global.action_1_selected_count_3 = 0;
            
            if (global.action_2_selected_count_3 < 1)
                global.action_2_selected_count_3 += 1;
            
            global.action_3_selected_count_3 = 0;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            event_check = true;
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            event_check = true;
        }
        else if (battle_enemy_name == "dunebud a")
        {
            global.action_1_selected_count = 0;
            
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            global.action_3_selected_count = 0;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "dunebud b")
        {
            global.action_1_selected_count_2 = 0;
            
            if (global.action_2_selected_count_2 < 1)
                global.action_2_selected_count_2 += 1;
            
            global.action_3_selected_count_2 = 0;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "cactony a")
        {
            global.action_1_selected_count = 0;
            
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "slither a")
        {
            global.action_1_selected_count = 0;
            global.action_3_selected_count = 0;
            
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            obj_battle_enemy_effect_slither_fog.target_alpha = 0.5;
            fog_sound = audio_play_sound(snd_undertale_appear, 1, 0);
            audio_sound_pitch(fog_sound, 0.5);
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "slither b")
        {
            global.action_1_selected_count_2 = 0;
            global.action_3_selected_count_2 = 0;
            
            if (global.action_2_selected_count_2 < 1)
                global.action_2_selected_count_2 += 1;
            
            obj_battle_enemy_effect_slither_fog.target_alpha = 0.5;
            fog_sound = audio_play_sound(snd_undertale_appear, 1, 0);
            audio_sound_pitch(fog_sound, 0.5);
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "bowll a")
        {
            global.action_1_selected_count = 0;
            
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            global.action_3_selected_count = 0;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "el bailador")
        {
            global.action_1_selected_count = 0;
            
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            global.action_3_selected_count = 0;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "flower girls")
        {
            global.action_1_selected_count = 0;
            
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            global.action_3_selected_count = 0;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            global.enemy_attacking = true;
            instance_destroy();
        }
        else if (battle_enemy_name == "starlo")
        {
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "ed" || battle_enemy_name == "ace" || battle_enemy_name == "mooch" || battle_enemy_name == "moray")
        {
            global.enemy_attacking = true;
            instance_destroy();
        }
        else if (battle_enemy_name == "tellyvis a")
        {
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "jandroid a")
        {
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            global.action_1_selected_count = 0;
            global.action_3_selected_count = 0;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "jandroid b")
        {
            if (global.action_2_selected_count_2 < 1)
                global.action_2_selected_count_2 += 1;
            
            global.action_1_selected_count_2 = 0;
            global.action_3_selected_count_2 = 0;
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "goosic a")
        {
            if (global.action_2_selected_count < 1)
                global.action_2_selected_count += 1;
            
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "goosic b")
        {
            if (global.action_2_selected_count_2 < 1)
                global.action_2_selected_count_2 += 1;
            
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "sousborg")
        {
            if (global.enemy_mode == 1)
            {
                global.enemy_mode = 2;
                global.action_amount = 3;
                global.enemy_attack = "Egg Boil";
            }
            else
            {
                global.enemy_attack = "Sousborg Flip";
            }
            
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "axis")
        {
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "axis genocide")
        {
            global.enemy_attacking = true;
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "macro froggit")
        {
            global.action_2_selected_count += 1;
            global.enemy_attacking = true;
            instance_destroy();
        }
        else if (battle_enemy_name == "guardener")
        {
            if (instance_exists(obj_guardener_meter))
            {
                power_sound = audio_play_sound(snd_power_down, 1, 0);
                global.action_2_selected_count += 1;
                
                if (global.action_2_selected_count >= 5)
                    global.enemy_sparing = true;
                
                global.enemy_attacking = false;
            }
            
            instance_destroy();
            exit;
        }
        else if (battle_enemy_name == "flowey")
        {
            if (global.flowey_act[1] == 4)
            {
                audio_play_sound(snd_heal, 1, 0);
                
                if (global.current_hp_self < global.max_hp_self)
                {
                    global.current_hp_self += (global.max_hp_self * 0.3);
                    
                    if (global.current_hp_self > global.max_hp_self)
                        global.current_hp_self = global.max_hp_self;
                }
                
                global.enemy_attacking = true;
            }
            else
            {
                instance_create_depth(0, 0, -100, obj_flowey_battle_screen_glitch_fight);
                
                with (obj_heart_battle_menu)
                    event_user(0);
            }
            
            instance_destroy();
        }
        else if (battle_enemy_name == "ceroba")
        {
            if (!instance_exists(obj_ceroba_pacifist_act_helper) || obj_ceroba_pacifist_act_helper.can_skip == true)
            {
                global.action_2_selected_count += 1;
                global.enemy_attacking = true;
                instance_destroy();
            }
            
            exit;
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            if (!instance_exists(obj_martlet_final_act_helper) || obj_martlet_final_act_helper.can_skip == true)
            {
                global.action_2_selected_count += 1;
                global.enemy_attacking = true;
                instance_destroy();
            }
            
            exit;
        }
    }
    
    if (event_check == true)
    {
        act_number = global.act_number;
        
        switch (act_number)
        {
            case 1:
                scr_determine_special_effect_enemy("Action 2");
                break;
            
            case 2:
                scr_determine_special_effect_enemy("Action 2 2");
                break;
            
            case 3:
                scr_determine_special_effect_enemy("Action 2 3");
                break;
        }
        
        global.important_cutscene = script_execute(scr_determine_important_cutscene_attacking);
        global.can_attack = script_execute(scr_determine_can_attack_attacking);
        
        if (global.important_cutscene == false && global.can_attack == true)
            global.enemy_attacking = true;
        
        if (global.can_attack == false)
        {
            with (obj_dialogue_box_battle)
                no_loop_can_attack = false;
        }
        
        instance_destroy();
        exit;
    }
}
