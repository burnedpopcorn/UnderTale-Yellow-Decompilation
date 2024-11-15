function scr_battle_core_directory_generation()
{
    var battle_enemy_name, game_mode;
    
    battle_enemy_name = global.battle_enemy_name;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            script_execute(scr_generate_battle_craniex);
        else if (battle_enemy_name == "ms mettaton")
            script_execute(scr_generate_battle_ms_mettaton);
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "nobody came")
        {
            script_execute(scr_generate_battle_nobody_came_yellow);
        }
        else if (battle_enemy_name == "froggit intro")
        {
            script_execute(scr_generate_battle_froggit_intro_yellow);
        }
        else if (battle_enemy_name == "flowey intro")
        {
            script_execute(scr_generate_battle_flowey_intro_yellow);
        }
        else if (battle_enemy_name == "flier solo")
        {
            script_execute(scr_generate_battle_flier_solo);
        }
        else if (battle_enemy_name == "flier trio")
        {
            script_execute(scr_generate_battle_flier_trio);
        }
        else if (battle_enemy_name == "penilla solo")
        {
            script_execute(scr_generate_battle_penilla_solo);
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            script_execute(scr_generate_battle_flier_penilla_duo);
        }
        else if (battle_enemy_name == "sweet corn solo")
        {
            script_execute(scr_generate_battle_sweet_corn_solo);
        }
        else if (battle_enemy_name == "sweet corn duo")
        {
            script_execute(scr_generate_battle_sweet_corn_duo);
        }
        else if (battle_enemy_name == "sweet corn penilla duo")
        {
            script_execute(scr_generate_battle_sweet_corn_penilla_duo);
        }
        else if (battle_enemy_name == "crispy scroll solo")
        {
            script_execute(scr_generate_battle_crispy_scroll_solo);
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            script_execute(scr_generate_battle_crispy_scroll_penilla_duo);
        }
        else if (battle_enemy_name == "rorrim solo")
        {
            script_execute(scr_generate_battle_rorrim_solo);
        }
        else if (battle_enemy_name == "decibat")
        {
            script_execute(scr_generate_battle_decibat);
        }
        else if (battle_enemy_name == "dalv")
        {
            script_execute(scr_generate_battle_dalv);
        }
        else if (battle_enemy_name == "micro froggit")
        {
            script_execute(scr_generate_battle_micro_froggit);
        }
        else if (battle_enemy_name == "insomnitot solo")
        {
            script_execute(scr_generate_battle_insomnitot_solo);
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            script_execute(scr_generate_battle_insomnitot_duo);
        }
        else if (battle_enemy_name == "know cone solo")
        {
            script_execute(scr_generate_battle_know_cone_solo);
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            script_execute(scr_generate_battle_know_cone_insomnitot_duo);
        }
        else if (battle_enemy_name == "frostermit solo")
        {
            script_execute(scr_generate_battle_frostermit_solo);
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            script_execute(scr_generate_battle_frostermit_know_cone_duo);
        }
        else if (battle_enemy_name == "trihecta together")
        {
            script_execute(scr_generate_battle_trihecta_together);
        }
        else if (battle_enemy_name == "trihecta separated")
        {
            script_execute(scr_generate_battle_trihecta_separated);
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            script_execute(scr_generate_battle_martlet_pacifist);
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            script_execute(scr_generate_battle_martlet_genocide);
        }
        else if (battle_enemy_name == "shufflers")
        {
            script_execute(scr_generate_battle_shufflers);
        }
        else if (battle_enemy_name == "dunebud solo")
        {
            script_execute(scr_generate_battle_dunebud_solo);
        }
        else if (battle_enemy_name == "dunebud duo")
        {
            script_execute(scr_generate_battle_dunebud_duo);
        }
        else if (battle_enemy_name == "cactony solo")
        {
            script_execute(scr_generate_battle_cactony_solo);
        }
        else if (battle_enemy_name == "slither solo")
        {
            script_execute(scr_generate_battle_slither_solo);
        }
        else if (battle_enemy_name == "bowll solo")
        {
            script_execute(scr_generate_battle_bowll_solo);
        }
        else if (battle_enemy_name == "cactony slither duo")
        {
            script_execute(scr_generate_battle_cactony_slither_duo);
        }
        else if (battle_enemy_name == "flower girls")
        {
            script_execute(scr_generate_battle_flower_girls_solo);
        }
        else if (battle_enemy_name == "el bailador")
        {
            script_execute(scr_generate_battle_el_bailador);
        }
        else if (battle_enemy_name == "dummy training pacifist")
        {
            script_execute(scr_generate_battle_dummy_training_pacifist);
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            script_execute(scr_generate_battle_ceroba_genocide);
        }
        else if (battle_enemy_name == "starlo")
        {
            script_execute(scr_generate_battle_starlo);
        }
        else if (battle_enemy_name == "boulders minifight")
        {
            script_execute(scr_generate_battle_boulders_minifight);
        }
        else if (battle_enemy_name == "feisty five")
        {
            script_execute(scr_generate_battle_feisty_five);
        }
        else if (battle_enemy_name == "steam minifight")
        {
            script_execute(scr_generate_battle_steam_minifight);
        }
        else if (battle_enemy_name == "energy balls minifight")
        {
            script_execute(scr_generate_battle_energy_balls);
        }
        else if (battle_enemy_name == "tellyvis")
        {
            script_execute(scr_generate_battle_tellyvis_solo);
        }
        else if (battle_enemy_name == "goosic")
        {
            script_execute(scr_generate_battle_goosic_solo);
        }
        else if (battle_enemy_name == "jandroid")
        {
            script_execute(scr_generate_battle_jandroid_solo);
        }
        else if (battle_enemy_name == "jandroid goosic duo")
        {
            script_execute(scr_generate_battle_jandroid_goosic_duo);
        }
        else if (battle_enemy_name == "jandroid duo")
        {
            script_execute(scr_generate_battle_jandroid_duo);
        }
        else if (battle_enemy_name == "sousborg")
        {
            script_execute(scr_generate_battle_sousborg);
        }
        else if (battle_enemy_name == "axis")
        {
            script_execute(scr_generate_battle_axis);
        }
        else if (battle_enemy_name == "macro froggit")
        {
            script_execute(scr_generate_battle_macro_froggit);
        }
        else if (battle_enemy_name == "axis genocide")
        {
            script_execute(scr_generate_battle_axis_genocide);
        }
        else if (battle_enemy_name == "guardener")
        {
            script_execute(scr_generate_battle_guardener);
        }
        else if (battle_enemy_name == "flowey")
        {
            script_execute(scr_generate_battle_flowey);
        }
        else if (battle_enemy_name == "ceroba")
        {
            switch (global.hotland_flag[2])
            {
                case 0:
                    script_execute(scr_generate_battle_ceroba);
                    break;
                
                case 1:
                    script_execute(scr_generate_battle_ceroba_2);
                    break;
                
                case 2:
                    script_execute(scr_generate_battle_ceroba_3);
                    break;
                
                case 3:
                    script_execute(scr_generate_battle_ceroba_4);
                    break;
            }
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            switch (global.hotland_flag[9])
            {
                case 0:
                case 1:
                    script_execute(scr_generate_battle_martlet_genocide_final);
                    break;
                
                case 2:
                case 3:
                    script_execute(scr_generate_battle_martlet_genocide_final_2);
                    break;
            }
        }
        else if (battle_enemy_name == "asgore")
        {
            script_execute(scr_generate_battle_asgore);
        }
    }
}
