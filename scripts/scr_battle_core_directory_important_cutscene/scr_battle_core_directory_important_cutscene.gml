function scr_battle_core_directory_important_cutscene()
{
    var battle_enemy_name, game_mode;
    
    battle_enemy_name = global.battle_enemy_name;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "ms mettaton")
        {
            if (global.ms_mettaton_transformed == false)
            {
                with (obj_ms_mettaton_arms_mic)
                    image_speed = 0;
                
                instance_create(16, 70, obj_quote_bubble_battle_reverse);
                instance_create(0, 0, obj_quote_battle_ms_mettaton_important_cutscene_1);
                audio_stop_sound(mus_mettatonbattle);
                no_loop_important_cutscene = true;
            }
            else if (global.ms_mettaton_transformed == true)
            {
                instance_create(16, 70, obj_quote_bubble_battle_reverse);
                instance_create(0, 0, obj_quote_battle_ms_mettaton_important_cutscene_4);
                audio_stop_sound(mus_mettaton_ex);
                no_loop_important_cutscene = true;
            }
        }
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "froggit intro")
        {
            script_execute(scr_start_enemy_fleeing_froggit_intro_yellow);
            no_loop_important_cutscene = true;
        }
        else if (battle_enemy_name == "decibat")
        {
            script_execute(scr_start_enemy_fleeing_decibat);
            no_loop_important_cutscene = true;
        }
        else if (battle_enemy_name == "micro froggit")
        {
            script_execute(scr_start_enemy_stomping_micro_froggit);
            no_loop_important_cutscene = true;
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            script_execute(scr_start_enemy_fleeing_martlet_pacifist);
            no_loop_important_cutscene = true;
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            script_execute(scr_start_enemy_fleeing_martlet_genocide);
            no_loop_important_cutscene = true;
        }
        else if (battle_enemy_name == "feisty five")
        {
            script_execute(scr_start_enemy_fleeing_feisty_four);
            no_loop_important_cutscene = true;
        }
    }
}
