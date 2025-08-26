function scr_enemy_timer_attacks_bowll_solo()
{
    var enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Bowll Liquid" && !instance_exists(obj_battle_enemy_attack_bowll_liquid_generator))
        {
            var script_tgt = obj_dialogue_box_battle_transformation_any;
            scr_create_attack_boundary(script_tgt.bbox_left + 5, script_tgt.bbox_top + 5, script_tgt.sprite_width - 10, script_tgt.sprite_height - 10, 20, 0);
            instance_create(0, 0, obj_battle_enemy_attack_bowll_liquid_generator);
        }
        else if (enemy_attack == "Bowll Silverware" && !instance_exists(obj_battle_enemy_attack_bowll_silverware_generator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_bowll_silverware_generator);
        }
        
        if (enemy_attack == "Bowll Bull" && !instance_exists(obj_battle_enemy_attack_bowll_bull_generator))
            instance_create(0, 0, obj_battle_enemy_attack_bowll_bull_generator);
        
        if (enemy_attack == "Bowll Test Song" && !instance_exists(obj_sme_yellow_rhythm_generator))
        {
            instance_create(0, 0, obj_sme_yellow_rhythm_generator);
            
            with (obj_sme_yellow_rhythm_generator)
            {
                damage_name_1 = "bowll a";
                damage_name_2 = "bowll b";
                damage_name_3 = "bowll c";
                end_script = scr_sme_yellow_rhythm_out_gen_end_script_bowll;
                alarm_0_script = scr_sme_yellow_rhythm_out_gen_alarm_0_script_bowll;
                audio_restore = mus_danza_battle_yellow;
                
                if (global.turns_passed > 10 || global.turns_passed < 0)
                    global.turns_passed = 0;
                
                var turns_passed = global.turns_passed;
                
                switch (turns_passed)
                {
                    case 0:
                        script_execute(scr_sme_yellow_rhythm_song_data_danza_01);
                        break;
                    
                    case 1:
                        script_execute(scr_sme_yellow_rhythm_song_data_danza_02);
                        break;
                    
                    case 2:
                        script_execute(scr_sme_yellow_rhythm_song_data_danza_03);
                        break;
                    
                    case 3:
                        script_execute(scr_sme_yellow_rhythm_song_data_danza_04);
                        break;
                    
                    case 4:
                        script_execute(scr_sme_yellow_rhythm_song_data_danza_05);
                        break;
                    
                    case 5:
                        script_execute(scr_sme_yellow_rhythm_song_data_danza_06);
                        break;
                    
                    case 6:
                        script_execute(scr_sme_yellow_rhythm_song_data_danza_07);
                        break;
                    
                    case 7:
                        script_execute(scr_sme_yellow_rhythm_song_data_danza_08);
                        break;
                    
                    case 8:
                        script_execute(scr_sme_yellow_rhythm_song_data_danza_09);
                        break;
                    
                    case 9:
                        script_execute(scr_sme_yellow_rhythm_song_data_danza_10);
                        break;
                    
                    case 10:
                        audio_restore = snd_ceroba_staff_lock;
                        script_execute(scr_sme_yellow_rhythm_song_data_danza_finale_01);
                        break;
                    
                    case 11:
                        script_execute(scr_sme_yellow_rhythm_song_data_danza_finale_02);
                        break;
                    
                    default:
                        script_execute(scr_sme_yellow_rhythm_song_data_danza_test);
                }
            }
        }
    }
}
