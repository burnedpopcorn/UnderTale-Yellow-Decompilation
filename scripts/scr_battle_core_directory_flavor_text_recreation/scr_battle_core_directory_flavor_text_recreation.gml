function scr_battle_core_directory_flavor_text_recreation()
{
    var battle_enemy_name = global.battle_enemy_name;
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            script_execute(scr_recreate_heart_battle_menu_text_craniex);
        else if (battle_enemy_name == "ms mettaton")
            script_execute(scr_recreate_heart_battle_menu_text_ms_mettaton);
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "froggit intro")
            script_execute(scr_recreate_heart_battle_menu_text_froggit_intro_yellow);
        else if (battle_enemy_name == "flier solo")
            script_execute(scr_recreate_heart_battle_menu_text_flier_solo);
        else if (battle_enemy_name == "flier trio")
            script_execute(scr_recreate_heart_battle_menu_text_flier_trio);
        else if (battle_enemy_name == "penilla solo")
            script_execute(scr_recreate_heart_battle_menu_text_penilla_solo);
        else if (battle_enemy_name == "flier penilla duo")
            script_execute(scr_recreate_heart_battle_menu_text_flier_penilla_duo);
        else if (battle_enemy_name == "sweet corn solo")
            script_execute(scr_recreate_heart_battle_menu_text_sweet_corn_solo);
        else if (battle_enemy_name == "sweet corn duo")
            script_execute(scr_recreate_heart_battle_menu_text_sweet_corn_duo);
        else if (battle_enemy_name == "sweet corn penilla duo")
            script_execute(scr_recreate_heart_battle_menu_text_sweet_corn_penilla_duo);
        else if (battle_enemy_name == "crispy scroll solo")
            script_execute(scr_recreate_heart_battle_menu_text_crispy_scroll_solo);
        else if (battle_enemy_name == "crispy scroll penilla duo")
            script_execute(scr_recreate_heart_battle_menu_text_crispy_scroll_penilla_duo);
        else if (battle_enemy_name == "rorrim solo")
            script_execute(scr_recreate_heart_battle_menu_text_rorrim_solo);
        else if (battle_enemy_name == "decibat")
            script_execute(scr_recreate_heart_battle_menu_text_decibat);
        else if (battle_enemy_name == "dalv")
            script_execute(scr_recreate_heart_battle_menu_text_dalv);
        else if (battle_enemy_name == "micro froggit")
            script_execute(scr_recreate_heart_battle_menu_text_micro_froggit);
        else if (battle_enemy_name == "insomnitot solo")
            script_execute(scr_recreate_heart_battle_menu_text_insomnitot_solo);
        else if (battle_enemy_name == "insomnitot duo")
            script_execute(scr_recreate_heart_battle_menu_text_insomnitot_duo);
        else if (battle_enemy_name == "know cone solo")
            script_execute(scr_recreate_heart_battle_menu_text_know_cone_solo);
        else if (battle_enemy_name == "know cone insomnitot duo")
            script_execute(scr_recreate_heart_battle_menu_text_know_cone_insomnitot_duo);
        else if (battle_enemy_name == "frostermit solo")
            script_execute(scr_recreate_heart_battle_menu_text_frostermit_solo);
        else if (battle_enemy_name == "frostermit know cone duo")
            script_execute(scr_recreate_heart_battle_menu_text_frostermit_know_cone_duo);
        else if (battle_enemy_name == "trihecta together")
            script_execute(scr_recreate_heart_battle_menu_text_trihecta_together);
        else if (battle_enemy_name == "trihecta separated")
            script_execute(scr_recreate_heart_battle_menu_text_trihecta_separated);
        else if (battle_enemy_name == "martlet pacifist")
            script_execute(scr_recreate_heart_battle_menu_text_martlet_pacifist);
        else if (battle_enemy_name == "martlet genocide")
            script_execute(scr_recreate_heart_battle_menu_text_martlet_genocide);
        else if (battle_enemy_name == "dunebud solo")
            script_execute(scr_recreate_heart_battle_menu_text_dunebud_solo);
        else if (battle_enemy_name == "dunebud duo")
            script_execute(scr_recreate_heart_battle_menu_text_dunebud_duo);
        else if (battle_enemy_name == "cactony solo")
            script_execute(scr_recreate_heart_battle_menu_text_cactony_solo);
        else if (battle_enemy_name == "slither solo")
            script_execute(scr_recreate_heart_battle_menu_text_slither_solo);
        else if (battle_enemy_name == "bowll solo")
            script_execute(scr_recreate_heart_battle_menu_text_bowll_solo);
        else if (battle_enemy_name == "cactony slither duo")
            script_execute(scr_recreate_heart_battle_menu_text_cactony_slither_duo);
        else if (battle_enemy_name == "flower girls")
            script_execute(scr_recreate_heart_battle_menu_text_flower_girls_solo);
        else if (battle_enemy_name == "el bailador")
            script_execute(scr_recreate_heart_battle_menu_text_el_bailador);
        else if (battle_enemy_name == "dummy training pacifist")
            script_execute(scr_recreate_heart_battle_menu_text_dummy_training_pacifist);
        else if (battle_enemy_name == "ceroba genocide")
            script_execute(scr_recreate_heart_battle_menu_text_ceroba_genocide);
        else if (battle_enemy_name == "starlo")
            script_execute(scr_recreate_heart_battle_menu_text_starlo);
        else if (battle_enemy_name == "feisty five")
            script_execute(scr_recreate_heart_battle_menu_text_feisty_four);
        else if (battle_enemy_name == "tellyvis")
            script_execute(scr_recreate_heart_battle_menu_text_tellyvis_a);
        else if (battle_enemy_name == "sousborg")
            script_execute(scr_recreate_heart_battle_menu_text_sousborg);
        else if (battle_enemy_name == "goosic")
            script_execute(scr_recreate_heart_battle_menu_text_goosic_a);
        else if (battle_enemy_name == "jandroid")
            script_execute(scr_recreate_heart_battle_menu_text_jandroid_a);
        else if (battle_enemy_name == "jandroid goosic duo")
            script_execute(scr_recreate_heart_battle_menu_text_jandroid_goosic_duo);
        else if (battle_enemy_name == "jandroid duo")
            script_execute(scr_recreate_heart_battle_menu_text_jandroid_duo);
        else if (battle_enemy_name == "axis")
            script_execute(scr_recreate_heart_battle_menu_text_axis);
        else if (battle_enemy_name == "axis genocide")
            script_execute(scr_recreate_heart_battle_menu_text_axis_geno);
        else if (battle_enemy_name == "macro froggit")
            script_execute(scr_recreate_heart_battle_menu_text_macro);
        else if (battle_enemy_name == "guardener")
            script_execute(scr_recreate_heart_battle_menu_text_guardener);
        else if (battle_enemy_name == "flowey")
            script_execute(scr_recreate_heart_battle_menu_text_flowey);
        else if (battle_enemy_name == "ceroba")
            script_execute(scr_recreate_heart_battle_menu_text_ceroba);
        else if (battle_enemy_name == "martlet genocide final")
            script_execute(scr_recreate_heart_battle_menu_text_martlet_genocide_final);
    }
}
