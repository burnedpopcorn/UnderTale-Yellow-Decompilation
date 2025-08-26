function scr_enemy_timer_attacks_el_bailador()
{
    var enemy_attack = global.enemy_attack;
    var charts = [[3.2, 4, 4.8], [1, 1, 1], [3.2, 4, 4.8], [1, 2, 1], [3.2, 3.6, 4.4, 4.8], [1, 2, 1, 0], [3.2, 3.6, 4, 4.8, 5.6, 6.4, 6.8, 7.2, 8], [1, 2, 0, 2, 1, 2, 2, 2, 1], [1.54, 1.94, 2.32, 2.7, 3.09, 3.87, 4.25, 5.03, 5.41, 5.81, 6.19, 6.96, 7.35, 7.74], [1, 2, 0, 1, 2, 1, 2, 1, 2, 0, 1, 0, 2, 1], [1.5, 1.87, 2.25, 2.62, 3, 3.37, 4.12, 4.5, 4.87, 5.62, 6.37, 6.75, 7.12, 7.5], [1, 2, 0, 2, 1, 2, 2, 0, 2, 0, 2, 2, 0, 1], [1.45, 1.81, 2.36, 2.9, 3.18, 3.45, 4, 4.36, 5.09, 5.36, 5.63, 6.72, 7, 7.27], [0, 2, 1, 2, 1, 2, 0, 1, 1, 0, 1, 2, 1, 0], [1.76, 2.82, 3.17, 3.52, 3.7, 3.88, 4.23, 4.58, 5.11, 5.29, 6, 6.35, 6.52, 7.05, 7.76, 8.11, 8.47], [2, 1, 0, 2, 1, 2, 1, 0, 1, 2, 1, 1, 1, 0, 0, 1, 0], [1.37, 1.88, 2.05, 2.57, 2.74, 3.25, 3.42, 3.77, 4.11, 4.45, 4.8, 5.14, 5.48, 6.34, 6.6, 6.85], [1, 0, 1, 2, 1, 1, 0, 2, 1, 1, 0, 1, 0, 1, 1, 0], [1.45, 1.62, 1.94, 2.43, 2.59, 2.91, 3.24, 3.89, 4.21, 4.54, 5.02, 5.18, 5.51, 5.83, 6.64, 6.89, 7.13, 7.94, 8.18, 8.43, 8.75, 9.08], [0, 1, 1, 1, 0, 0, 1, 0, 1, 2, 2, 1, 0, 1, 1, 0, 1, 1, 2, 1, 0, 1], [1.26, 1.73, 2.21, 2.52, 2.76, 3, 3.15, 3.47, 3.78, 4.42, 5.05, 5.21, 5.68, 6, 6.31, 6.47, 6.78, 6.94, 7.57, 7.73, 8.05, 8.21, 8.84, 9.47, 9.94, 10.1], [1, 0, 2, 2, 1, 0, 1, 1, 0, 0, 1, 0, 1, 2, 1, 2, 1, 2, 1, 1, 0, 1, 0, 0, 0, 0], [2.3, 2.7, 3.2, 3.7, 4.2, 4.7, 5.7, 7.2], [1, 1, 1, 1, 0, 2, 0, 0], [3, 4, 5, 6, 7], [2, 1, 0, 1, 2], [4, 5.5, 8], [0, 1, 2]];
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "El Bailador Song" && !instance_exists(obj_sme_yellow_rhythm_generator))
        {
            if (global.route != 3)
                instance_create(obj_el_bailador_neutral.x, obj_el_bailador_neutral.y, obj_battle_enemy_attack_el_bailador_dance);
            else if (global.turns_passed >= 5)
                obj_el_bailador_neutral.neutral_sprite = 1450;
            else
                instance_create(obj_el_bailador_neutral.x, obj_el_bailador_neutral.y, obj_battle_enemy_attack_el_bailador_dance);
            
            instance_create(0, 0, obj_sme_yellow_rhythm_generator);
            
            with (obj_sme_yellow_rhythm_generator)
            {
                damage_name_1 = "el bailador";
                damage_name_2 = "void";
                damage_name_3 = "void";
                end_script = scr_sme_yellow_rhythm_out_gen_end_script_el_bailador;
                alarm_0_script = scr_sme_yellow_rhythm_out_gen_alarm_0_script_el_bailador;
                audio_restore = mus_danza_battle_yellow;
                
                if (global.turns_passed > 10)
                    global.turns_passed = 0;
                
                var turns_passed = global.turns_passed;
                
                switch (turns_passed)
                {
                    case 0:
                        scr_sme_yellow_rhythm_song_data_danza(499, charts[0], charts[1]);
                        obj_battle_el_bailador_controller.battle_el_bail_event_tutorial = true;
                        break;
                    
                    case 1:
                        scr_sme_yellow_rhythm_song_data_danza(500, charts[2], charts[3]);
                        break;
                    
                    case 2:
                        scr_sme_yellow_rhythm_song_data_danza(501, charts[4], charts[5]);
                        obj_battle_el_bailador_controller.battle_el_bail_event_tutorial = false;
                        break;
                    
                    case 3:
                        scr_sme_yellow_rhythm_song_data_danza(502, charts[6], charts[7], 1.8);
                        break;
                    
                    case 4:
                        scr_sme_yellow_rhythm_song_data_danza(503, charts[8], charts[9], 1.5);
                        break;
                    
                    case 5:
                        if (global.route != 3)
                            scr_sme_yellow_rhythm_song_data_danza(504, charts[10], charts[11], 1.4);
                        else
                            scr_sme_yellow_rhythm_song_data_danza(123, charts[22], charts[23]);
                        
                        break;
                    
                    case 6:
                        if (global.route != 3)
                            scr_sme_yellow_rhythm_song_data_danza(505, charts[12], charts[13], 1.4);
                        else
                            scr_sme_yellow_rhythm_song_data_danza(123, charts[24], charts[25], 2.5);
                        
                        break;
                    
                    case 7:
                        if (global.route != 3)
                            scr_sme_yellow_rhythm_song_data_danza(506, charts[14], charts[15], 1.4);
                        else
                            scr_sme_yellow_rhythm_song_data_danza(123, charts[26], charts[27], 3.5);
                        
                        break;
                    
                    case 8:
                        scr_sme_yellow_rhythm_song_data_danza(507, charts[16], charts[17], 1.3);
                        break;
                    
                    case 9:
                        scr_sme_yellow_rhythm_song_data_danza(509, charts[18], charts[19], 1.3);
                        break;
                    
                    case 10:
                        audio_restore = snd_ceroba_staff_lock;
                        scr_sme_yellow_rhythm_song_data_danza(510, charts[20], charts[21], 1.2);
                        break;
                    
                    default:
                        scr_sme_yellow_rhythm_song_data_danza(499, charts[0], charts[1]);
                }
                
                switch (turns_passed)
                {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                        with (obj_background_el_bailador_test_yellow)
                        {
                            m_sign_modifier = 1;
                            m_time_elapsed = -1;
                            time_max = time_max_default;
                            m_sign_modifier_v = 1;
                            m_time_elapsed_v = -1;
                            time_max_v = time_max_v_default;
                            max_rise_v = max_rise_v_default;
                            turns_passed = global.turns_passed;
                            
                            switch (turns_passed)
                            {
                                case 0:
                                    interlaced_x = false;
                                    interlaced_y = false;
                                    osc_horizontal = true;
                                    osc_vertical = false;
                                    break;
                                
                                case 1:
                                    interlaced_x = false;
                                    interlaced_y = false;
                                    osc_horizontal = false;
                                    osc_vertical = true;
                                    break;
                                
                                case 2:
                                    interlaced_x = false;
                                    interlaced_y = true;
                                    osc_horizontal = false;
                                    osc_vertical = true;
                                    max_rise_v -= 1;
                                    break;
                                
                                case 3:
                                    interlaced_x = false;
                                    interlaced_y = false;
                                    osc_horizontal = true;
                                    osc_vertical = true;
                                    break;
                                
                                default:
                            }
                        }
                        
                        with (obj_battle_enemy_attack_el_bailador_dance)
                        {
                            sign_modifier = 1;
                            time_elapsed = 0;
                            time_max = time_max_default;
                        }
                        
                        break;
                    
                    case 4:
                    case 5:
                    case 6:
                        with (obj_background_el_bailador_test_yellow)
                        {
                            m_sign_modifier = 1;
                            m_time_elapsed = -1;
                            time_max = floor(time_max_default * 0.75);
                            m_sign_modifier_v = 1;
                            m_time_elapsed_v = -1;
                            time_max_v = floor(time_max_default * 0.75);
                            max_rise_v = max_rise_v_default;
                            turns_passed = global.turns_passed;
                            
                            switch (turns_passed)
                            {
                                case 4:
                                    interlaced_x = false;
                                    interlaced_y = false;
                                    osc_horizontal = true;
                                    osc_vertical = false;
                                    break;
                                
                                case 5:
                                    interlaced_x = false;
                                    interlaced_y = false;
                                    osc_horizontal = false;
                                    osc_vertical = true;
                                    break;
                                
                                case 6:
                                    interlaced_x = false;
                                    interlaced_y = true;
                                    osc_horizontal = true;
                                    osc_vertical = true;
                                    max_rise_v -= 1;
                                    break;
                                
                                default:
                            }
                        }
                        
                        with (obj_battle_enemy_attack_el_bailador_dance)
                        {
                            sign_modifier = 1;
                            time_elapsed = 0;
                            time_max = floor(time_max_default * 0.75);
                        }
                        
                        break;
                    
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                        with (obj_background_el_bailador_test_yellow)
                        {
                            m_sign_modifier = 1;
                            m_time_elapsed = -1;
                            time_max = floor(time_max_default * 0.5);
                            m_sign_modifier_v = 1;
                            m_time_elapsed_v = -1;
                            time_max_v = floor(time_max_default * 0.5);
                            max_rise_v = max_rise_v_default;
                            turns_passed = global.turns_passed;
                            
                            switch (turns_passed)
                            {
                                case 7:
                                    interlaced_x = false;
                                    interlaced_y = false;
                                    osc_horizontal = true;
                                    osc_vertical = false;
                                    break;
                                
                                case 8:
                                    interlaced_x = false;
                                    interlaced_y = false;
                                    osc_horizontal = false;
                                    osc_vertical = true;
                                    break;
                                
                                case 9:
                                    interlaced_x = false;
                                    interlaced_y = false;
                                    osc_horizontal = true;
                                    osc_vertical = true;
                                    break;
                                
                                case 10:
                                    interlaced_x = false;
                                    interlaced_y = true;
                                    osc_horizontal = true;
                                    osc_vertical = true;
                                    max_rise_v -= 1;
                                    break;
                                
                                default:
                            }
                        }
                        
                        with (obj_battle_enemy_attack_el_bailador_dance)
                        {
                            sign_modifier = 1;
                            time_elapsed = 0;
                            time_max = floor(time_max_default * 0.5);
                        }
                        
                        break;
                    
                    default:
                }
            }
        }
        else if (enemy_attack == "Bailador No Attack")
        {
            with (obj_dialogue_box_battle_transformation_any)
                event_user(0);
        }
    }
}
