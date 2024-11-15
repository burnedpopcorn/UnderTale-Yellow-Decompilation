function scr_enemy_timer_attacks_flowey()
{
    var enemy_attack, charts;
    
    if (live_call())
        return global.live_result;
    
    enemy_attack = global.enemy_attack;
    
    if (!instance_exists(obj_attack_cycler_flowey))
        instance_create(0, 0, obj_attack_cycler_flowey);
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Flowey Opener")
        {
        }
        else if (enemy_attack == "Flowey Attack 1" && !instance_exists(obj_flowey_1_attack_mouth_face_creator))
        {
            instance_create_depth(0, 0, -100, obj_flowey_1_attack_mouth_face_creator);
        }
        else if (enemy_attack == "Flowey Attack 3" && !instance_exists(obj_flowey_1_attack_pellet_spin_creator))
        {
            instance_create_depth(0, 0, -100, obj_flowey_1_attack_pellet_spin_creator);
        }
        else if (enemy_attack == "Flowey Attack 2" && !instance_exists(obj_flowey_1_attack_petal_pull_creator))
        {
            instance_create_depth(0, 0, -100, obj_flowey_1_attack_petal_pull_creator);
        }
        else if (enemy_attack == "Flowey Attack 4" && !instance_exists(obj_flowey_1_attack_4_creator))
        {
            instance_create_depth(0, 0, -100, obj_flowey_1_attack_4_creator);
        }
        else if (enemy_attack == "Flowey Attack 5" && !instance_exists(obj_flowey_1_attack_surround_pellets_creator))
        {
            instance_create_depth(0, 0, -100, obj_flowey_1_attack_surround_pellets_creator);
        }
        else if (enemy_attack == "Flowey Attack 6" && !instance_exists(obj_flowey_1_attack_6_creator))
        {
            instance_create_depth(0, 0, -100, obj_flowey_1_attack_6_creator);
        }
        else if (enemy_attack == "Flowey Attack 7" && !instance_exists(obj_flowey_1_attack_7_creator))
        {
            instance_create_depth(0, 0, -100, obj_flowey_1_attack_7_creator);
        }
        else if (enemy_attack == "Flowey Attack 8" && !instance_exists(obj_flowey_1_attack_8_creator))
        {
            instance_create_depth(0, 0, -100, obj_flowey_1_attack_8_creator);
        }
        else if (enemy_attack == "Flowey Attack 9" && !instance_exists(obj_flowey_1_attack_9_creator))
        {
            instance_create_depth(0, 0, -100, obj_flowey_1_attack_9_creator);
        }
        else if (enemy_attack == "Flowey Attack 10" && !instance_exists(obj_flowey_1_attack_10_creator))
        {
            instance_create_depth(0, 0, -1000, obj_flowey_1_attack_10_creator);
        }
        else if (enemy_attack == "Flowey Corrupt Attack 1" && !instance_exists(obj_battle_enemy_attack_decibat_waves_checker_corrupt))
        {
            instance_create_depth(0, 0, -1000, obj_battle_enemy_attack_decibat_waves_checker_corrupt);
        }
        else if (enemy_attack == "Flowey Corrupt Attack 2" && !instance_exists(obj_sme_yellow_rhythm_generator))
        {
            charts = [[1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, 5.5, 6, 6.5, 7], [0, 2, 1, 0, 1, 2, 2, 1, 0, 1, 1, 2]];
            instance_create(0, 0, obj_sme_yellow_rhythm_generator);
            
            with (obj_sme_yellow_rhythm_generator)
            {
                damage_name_1 = "flowey";
                damage_name_2 = "void";
                damage_name_3 = "void";
                end_script = scr_sme_yellow_rhythm_out_gen_end_script_flowey;
                alarm_0_script = scr_sme_yellow_rhythm_out_gen_alarm_0_script_el_bailador;
                audio_restore = 512;
                scr_sme_yellow_rhythm_song_data_danza(scr_sme_yellow_rhythm_song_data_flowey_nosong, charts[0], charts[1]);
            }
        }
        else if (enemy_attack == "Flowey Corrupt Attack 3" && !instance_exists(obj_battle_enemy_attack_starlo_shooting_dynamite_checker_corrupt))
        {
            instance_create_depth(0, 0, -1000, obj_battle_enemy_attack_starlo_shooting_dynamite_checker_corrupt);
        }
        else if (enemy_attack == "Flowey Corrupt Attack 4" && !instance_exists(obj_battle_enemy_attack_guardener_checker_corrupt))
        {
            instance_create_depth(0, 0, -1000, obj_battle_enemy_attack_guardener_checker_corrupt);
        }
        else if (enemy_attack == "Flowey Corrupt Attack 5" && !instance_exists(obj_battle_enemy_attack_energy_balls_spin_creator_corrupt))
        {
            instance_create_depth(0, 0, -1000, obj_battle_enemy_attack_energy_balls_spin_creator_corrupt);
        }
        else if (enemy_attack == "Flowey Corrupt Attack 6" && !instance_exists(obj_battle_enemy_attack_dalv_bolts_checker_corrupt))
        {
            instance_create_depth(0, 0, -1000, obj_battle_enemy_attack_dalv_bolts_checker_corrupt);
        }
        else if (enemy_attack == "Flowey Corrupt Attack 7" && !instance_exists(obj_battle_enemy_attack_ceroba_fire_circle_checker_corrupt))
        {
            instance_create_depth(0, 0, -1000, obj_battle_enemy_attack_ceroba_fire_circle_checker_corrupt);
        }
    }
}
