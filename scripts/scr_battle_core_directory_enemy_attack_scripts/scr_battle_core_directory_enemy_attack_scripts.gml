function scr_battle_core_directory_enemy_attack_scripts()
{
    var battle_enemy_name = global.battle_enemy_name;
    var game_mode = global.game_mode;
    
    if (instance_exists(obj_heart_battle_fighting_parent))
    {
        if (global.party_member == obj_ceroba_follower)
        {
            if (battle_ceroba_buff_noloop == false && obj_heart_battle_fighting_parent.moveable == true)
            {
                battle_ceroba_buff_noloop = true;
                
                if (!instance_exists(obj_battle_enemy_attack_ceroba_diamond_buff) && global.current_pp_self <= 0)
                    instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -30, obj_battle_enemy_attack_ceroba_diamond_buff);
                
                exit;
            }
            else if (instance_exists(obj_battle_enemy_attack_ceroba_diamond_buff))
            {
                exit;
            }
        }
        
        if (battle_enemy_name == "flier solo")
        {
            script_execute(scr_enemy_timer_attacks_flier_solo);
        }
        else if (battle_enemy_name == "flier trio")
        {
            script_execute(scr_enemy_timer_attacks_flier_trio);
        }
        else if (battle_enemy_name == "penilla solo")
        {
            script_execute(scr_enemy_timer_attacks_penilla_solo);
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            script_execute(scr_enemy_timer_attacks_flier_penilla_duo);
        }
        else if (battle_enemy_name == "sweet corn solo")
        {
            script_execute(scr_enemy_timer_attacks_sweet_corn_solo);
        }
        else if (battle_enemy_name == "sweet corn duo")
        {
            script_execute(scr_enemy_timer_attacks_sweet_corn_duo);
        }
        else if (battle_enemy_name == "sweet corn penilla duo")
        {
            script_execute(scr_enemy_timer_attacks_sweet_corn_penilla_duo);
        }
        else if (battle_enemy_name == "crispy scroll solo")
        {
            script_execute(scr_enemy_timer_attacks_crispy_scroll_solo);
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            script_execute(scr_enemy_timer_attacks_crispy_scroll_penilla_duo);
        }
        else if (battle_enemy_name == "rorrim solo")
        {
            script_execute(scr_enemy_timer_attacks_rorrim_solo);
        }
        else if (battle_enemy_name == "decibat")
        {
            script_execute(scr_enemy_timer_attacks_decibat);
        }
        else if (battle_enemy_name == "dalv")
        {
            script_execute(scr_enemy_timer_attacks_dalv);
        }
        else if (battle_enemy_name == "micro froggit")
        {
            script_execute(scr_enemy_timer_attacks_micro_froggit);
        }
        else if (battle_enemy_name == "insomnitot solo")
        {
            script_execute(scr_enemy_timer_attacks_insomnitot_solo);
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            script_execute(scr_enemy_timer_attacks_insomnitot_duo);
        }
        else if (battle_enemy_name == "know cone solo")
        {
            script_execute(scr_enemy_timer_attacks_know_cone_solo);
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            script_execute(scr_enemy_timer_attacks_know_cone_insomnitot_duo);
        }
        else if (battle_enemy_name == "frostermit solo")
        {
            script_execute(scr_enemy_timer_attacks_frostermit_solo);
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            script_execute(scr_enemy_timer_attacks_frostermit_know_cone_duo);
        }
        else if (battle_enemy_name == "trihecta together" || battle_enemy_name == "trihecta separated")
        {
            script_execute(scr_enemy_timer_attacks_trihecta);
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            script_execute(scr_enemy_timer_attacks_martlet_pacifist);
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            script_execute(scr_enemy_timer_attacks_martlet_genocide);
        }
        else if (battle_enemy_name == "dunebud solo")
        {
            script_execute(scr_enemy_timer_attacks_dunebud_solo);
        }
        else if (battle_enemy_name == "dunebud duo")
        {
            script_execute(scr_enemy_timer_attacks_dunebud_duo);
        }
        else if (battle_enemy_name == "cactony solo")
        {
            script_execute(scr_enemy_timer_attacks_cactony_solo);
        }
        else if (battle_enemy_name == "slither solo")
        {
            script_execute(scr_enemy_timer_attacks_slither_solo);
        }
        else if (battle_enemy_name == "bowll solo")
        {
            script_execute(scr_enemy_timer_attacks_bowll_solo);
        }
        else if (battle_enemy_name == "cactony slither duo")
        {
            script_execute(scr_enemy_timer_attacks_cactony_slither_duo);
        }
        else if (battle_enemy_name == "el bailador")
        {
            script_execute(scr_enemy_timer_attacks_el_bailador);
        }
        else if (battle_enemy_name == "flower girls")
        {
            script_execute(scr_enemy_timer_attacks_flower_girls);
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            script_execute(scr_enemy_timer_attacks_ceroba_genocide);
        }
        else if (battle_enemy_name == "starlo")
        {
            script_execute(scr_enemy_timer_attacks_starlo);
        }
        else if (battle_enemy_name == "boulders minifight")
        {
            script_execute(scr_enemy_timer_attacks_boulders);
        }
        else if (battle_enemy_name == "feisty five")
        {
            script_execute(scr_enemy_timer_attacks_feisty_five);
        }
        else if (battle_enemy_name == "steam minifight")
        {
            script_execute(scr_enemy_timer_attacks_steam);
        }
        else if (battle_enemy_name == "energy balls minifight")
        {
            script_execute(scr_enemy_timer_attacks_energy_balls);
        }
        else if (battle_enemy_name == "goosic")
        {
            script_execute(scr_enemy_timer_attacks_goosic_solo);
        }
        else if (battle_enemy_name == "jandroid")
        {
            script_execute(scr_enemy_timer_attacks_jandroid_solo);
        }
        else if (battle_enemy_name == "sousborg")
        {
            script_execute(scr_enemy_timer_attacks_sousborg);
        }
        else if (battle_enemy_name == "tellyvis")
        {
            script_execute(scr_enemy_timer_attacks_tellyvis_solo);
        }
        else if (battle_enemy_name == "jandroid goosic duo")
        {
            script_execute(scr_enemy_timer_attacks_jandroid_goosic_duo);
        }
        else if (battle_enemy_name == "jandroid duo")
        {
            script_execute(scr_enemy_timer_attacks_jandroid_duo);
        }
        else if (battle_enemy_name == "axis")
        {
            script_execute(scr_enemy_timer_attacks_axis);
        }
        else if (battle_enemy_name == "axis genocide")
        {
            script_execute(scr_enemy_timer_attacks_axis_geno);
        }
        else if (battle_enemy_name == "macro froggit")
        {
            script_execute(scr_enemy_timer_attacks_macro);
        }
        else if (battle_enemy_name == "guardener")
        {
            script_execute(scr_enemy_timer_attacks_guardener);
        }
        else if (battle_enemy_name == "flowey")
        {
            script_execute(scr_enemy_timer_attacks_flowey);
        }
        else if (battle_enemy_name == "ceroba")
        {
            script_execute(scr_enemy_timer_attacks_ceroba);
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            script_execute(scr_enemy_timer_attacks_martlet_genocide_final);
        }
        else if (battle_enemy_name == "asgore")
        {
            script_execute(scr_enemy_timer_attacks_asgore);
        }
        else
        {
            global.attack_counter = 0;
            global.attack_counter_max = 0;
        }
    }
    else
    {
        global.attack_counter = 0;
        global.attack_counter_max = 0;
    }
}
