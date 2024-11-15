function scr_battle_core_directory_enemy_attack_start()
{
    var battle_enemy_name, game_mode;
    
    battle_enemy_name = global.battle_enemy_name;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            script_execute(scr_start_enemy_attacking_craniex);
        else if (battle_enemy_name == "ms mettaton")
            script_execute(scr_start_enemy_attacking_ms_mettaton);
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier solo")
        {
            script_execute(scr_start_enemy_attacking_flier_solo);
        }
        else if (battle_enemy_name == "flier trio")
        {
            script_execute(scr_start_enemy_attacking_flier_trio);
        }
        else if (battle_enemy_name == "penilla solo")
        {
            script_execute(scr_start_enemy_attacking_penilla_solo);
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            script_execute(scr_start_enemy_attacking_flier_penilla_duo);
        }
        else if (battle_enemy_name == "sweet corn solo")
        {
            script_execute(scr_start_enemy_attacking_sweet_corn_solo);
        }
        else if (battle_enemy_name == "sweet corn duo")
        {
            script_execute(scr_start_enemy_attacking_sweet_corn_duo);
        }
        else if (battle_enemy_name == "sweet corn penilla duo")
        {
            script_execute(scr_start_enemy_attacking_sweet_corn_penilla_duo);
        }
        else if (battle_enemy_name == "crispy scroll solo")
        {
            script_execute(scr_start_enemy_attacking_crispy_scroll_solo);
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            script_execute(scr_start_enemy_attacking_crispy_scroll_penilla_duo);
        }
        else if (battle_enemy_name == "rorrim solo")
        {
            script_execute(scr_start_enemy_attacking_rorrim_solo);
        }
        else if (battle_enemy_name == "decibat")
        {
            script_execute(scr_start_enemy_attacking_decibat);
        }
        else if (battle_enemy_name == "dalv")
        {
            script_execute(scr_start_enemy_attacking_dalv);
        }
        else if (battle_enemy_name == "micro froggit")
        {
            script_execute(scr_start_enemy_attacking_micro_froggit);
        }
        else if (battle_enemy_name == "insomnitot solo")
        {
            script_execute(scr_start_enemy_attacking_insomnitot_solo);
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            script_execute(scr_start_enemy_attacking_insomnitot_duo);
        }
        else if (battle_enemy_name == "know cone solo")
        {
            script_execute(scr_start_enemy_attacking_know_cone_solo);
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            script_execute(scr_start_enemy_attacking_know_cone_insomnitot_duo);
        }
        else if (battle_enemy_name == "frostermit solo")
        {
            script_execute(scr_start_enemy_attacking_frostermit_solo);
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            script_execute(scr_start_enemy_attacking_frostermit_know_cone_duo);
        }
        else if (battle_enemy_name == "trihecta together")
        {
            script_execute(scr_start_enemy_attacking_trihecta_together);
        }
        else if (battle_enemy_name == "trihecta separated")
        {
            script_execute(scr_start_enemy_attacking_trihecta_separated);
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            script_execute(scr_start_enemy_attacking_martlet_pacifist);
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            script_execute(scr_start_enemy_attacking_martlet_genocide);
        }
        else if (battle_enemy_name == "dunebud solo")
        {
            script_execute(scr_start_enemy_attacking_dunebud_solo);
        }
        else if (battle_enemy_name == "dunebud duo")
        {
            script_execute(scr_start_enemy_attacking_dunebud_duo);
        }
        else if (battle_enemy_name == "cactony solo")
        {
            script_execute(scr_start_enemy_attacking_cactony_solo);
        }
        else if (battle_enemy_name == "slither solo")
        {
            script_execute(scr_start_enemy_attacking_slither_solo);
        }
        else if (battle_enemy_name == "bowll solo")
        {
            script_execute(scr_start_enemy_attacking_bowll_solo);
        }
        else if (battle_enemy_name == "cactony slither duo")
        {
            script_execute(scr_start_enemy_attacking_cactony_slither_duo);
        }
        else if (battle_enemy_name == "el bailador")
        {
            script_execute(scr_start_enemy_attacking_el_bailador);
        }
        else if (battle_enemy_name == "flower girls")
        {
            script_execute(scr_start_enemy_attacking_flower_girls);
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            script_execute(scr_start_enemy_attacking_ceroba_genocide);
        }
        else if (battle_enemy_name == "starlo")
        {
            script_execute(scr_start_enemy_attacking_starlo);
        }
        else if (battle_enemy_name == "boulders minifight")
        {
            script_execute(scr_start_enemy_attacking_boulders);
        }
        else if (battle_enemy_name == "feisty five")
        {
            script_execute(scr_start_enemy_attacking_feisty_five);
        }
        else if (battle_enemy_name == "steam minifight")
        {
            script_execute(scr_start_enemy_attacking_steam);
        }
        else if (battle_enemy_name == "energy balls minifight")
        {
            script_execute(scr_start_enemy_attacking_energy_balls);
        }
        else if (battle_enemy_name == "goosic")
        {
            script_execute(scr_start_enemy_attacking_goosic_solo);
        }
        else if (battle_enemy_name == "jandroid")
        {
            script_execute(scr_start_enemy_attacking_jandroid_solo);
        }
        else if (battle_enemy_name == "tellyvis")
        {
            script_execute(scr_start_enemy_attacking_tellyvis_solo);
        }
        else if (battle_enemy_name == "sousborg")
        {
            script_execute(scr_start_enemy_attacking_sousborg);
        }
        else if (battle_enemy_name == "jandroid goosic duo")
        {
            script_execute(scr_start_enemy_attacking_jandroid_goosic_duo);
        }
        else if (battle_enemy_name == "jandroid duo")
        {
            script_execute(scr_start_enemy_attacking_jandroid_duo);
        }
        else if (battle_enemy_name == "axis")
        {
            if (global.action_1_important)
                script_execute(scr_start_enemy_no_attack_axis);
            else
                script_execute(scr_start_enemy_attacking_axis);
        }
        else if (battle_enemy_name == "axis genocide")
        {
            script_execute(scr_start_enemy_attacking_axis_geno);
        }
        else if (battle_enemy_name == "macro froggit")
        {
            script_execute(scr_start_enemy_attacking_macro);
        }
        else if (battle_enemy_name == "guardener")
        {
            script_execute(scr_start_enemy_attacking_guardener);
        }
        else if (battle_enemy_name == "flowey")
        {
            script_execute(scr_start_enemy_attacking_flowey);
        }
        else if (battle_enemy_name == "ceroba")
        {
            script_execute(scr_start_enemy_attacking_ceroba);
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            script_execute(scr_start_enemy_attacking_martlet_genocide_final);
        }
        else if (battle_enemy_name == "asgore")
        {
            script_execute(scr_start_enemy_attacking_asgore);
        }
    }
}
