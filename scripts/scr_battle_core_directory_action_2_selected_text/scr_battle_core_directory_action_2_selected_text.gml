function scr_battle_core_directory_action_2_selected_text()
{
    var act_number;
    
    if (global.battling_boss == true)
    {
        battle_enemy_name = global.battle_enemy_name;
        enemy_mode = global.enemy_mode;
    }
    else
    {
        act_number = global.act_number;
        
        switch (act_number)
        {
            case 1:
                battle_enemy_name = global.battle_enemy_name_1;
                enemy_mode = global.enemy_mode;
                break;
            
            case 2:
                battle_enemy_name = global.battle_enemy_name_2;
                enemy_mode = global.enemy_mode_2;
                break;
            
            case 3:
                battle_enemy_name = global.battle_enemy_name_3;
                enemy_mode = global.enemy_mode_3;
                break;
            
            default:
                battle_enemy_name = global.battle_enemy_name_1;
                enemy_mode = global.enemy_mode;
        }
    }
    
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            script_execute(scr_dialogue_battle_action_selected_action_2_craniex);
        else if (battle_enemy_name == "ms mettaton")
            script_execute(scr_dialogue_battle_action_selected_action_2_ms_mettaton);
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "froggit intro")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_froggit_intro_yellow);
        }
        else if (battle_enemy_name == "flier a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_flier_a);
        }
        else if (battle_enemy_name == "flier b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_flier_b);
        }
        else if (battle_enemy_name == "flier c")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_flier_c);
        }
        else if (battle_enemy_name == "penilla a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_penilla_a);
        }
        else if (battle_enemy_name == "penilla b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_penilla_b);
        }
        else if (battle_enemy_name == "sweet corn a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_sweet_corn_a);
        }
        else if (battle_enemy_name == "sweet corn b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_sweet_corn_b);
        }
        else if (battle_enemy_name == "crispy scroll a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_crispy_scroll_a);
        }
        else if (battle_enemy_name == "rorrim a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_rorrim_a);
        }
        else if (battle_enemy_name == "decibat")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_decibat);
        }
        else if (battle_enemy_name == "dalv")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_dalv);
        }
        else if (battle_enemy_name == "micro froggit")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_micro_froggit);
        }
        else if (battle_enemy_name == "insomnitot a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_insomnitot_a);
        }
        else if (battle_enemy_name == "insomnitot b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_insomnitot_b);
        }
        else if (battle_enemy_name == "know cone a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_know_cone_a);
        }
        else if (battle_enemy_name == "know cone b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_know_cone_b);
        }
        else if (battle_enemy_name == "frostermit a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_frostermit_a);
        }
        else if (battle_enemy_name == "trihecta")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_trihecta);
        }
        else if (battle_enemy_name == "tri")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_tri);
        }
        else if (battle_enemy_name == "hec")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_hec);
        }
        else if (battle_enemy_name == "ta")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_ta);
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_martlet_pacifist);
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_martlet_genocide);
        }
        else if (battle_enemy_name == "dunebud a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_dunebud_a);
        }
        else if (battle_enemy_name == "dunebud b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_dunebud_b);
        }
        else if (battle_enemy_name == "cactony a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_cactony_a);
        }
        else if (battle_enemy_name == "slither a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_slither_a);
        }
        else if (battle_enemy_name == "slither b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_slither_b);
        }
        else if (battle_enemy_name == "bowll a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_bowll_a);
        }
        else if (battle_enemy_name == "el bailador")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_el_bailador);
        }
        else if (battle_enemy_name == "flower girls")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_flower_girls);
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_ceroba);
        }
        else if (battle_enemy_name == "starlo")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_starlo);
        }
        else if (battle_enemy_name == "tellyvis a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_tellyvis_a);
        }
        else if (battle_enemy_name == "jandroid a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_jandroid_a);
        }
        else if (battle_enemy_name == "goosic a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_goosic_a);
        }
        else if (battle_enemy_name == "jandroid b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_jandroid_b);
        }
        else if (battle_enemy_name == "goosic b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_goosic_b);
        }
        else if (battle_enemy_name == "sousborg")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_sousborg);
        }
        else if (battle_enemy_name == "axis")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_axis);
        }
        else if (battle_enemy_name == "macro froggit")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_macro);
        }
        else if (battle_enemy_name == "axis genocide")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_axis_geno);
        }
        else if (battle_enemy_name == "guardener")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_guardener);
        }
        else if (battle_enemy_name == "ed" || battle_enemy_name == "ace" || battle_enemy_name == "moray" || battle_enemy_name == "mooch")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_feisty_four);
        }
        else if (battle_enemy_name == "flowey")
        {
            if (global.flowey_act[1] == 4)
            {
                message[0] = "* Recovered 30% of your HP!";
            }
            else
            {
                message[0] = "";
                script_execute(scr_battle_core_directory_action_2_selected_event);
                instance_destroy();
            }
        }
        else if (battle_enemy_name == "ceroba")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_ceroba_pacifist);
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            script_execute(scr_dialogue_battle_action_selected_action_2_martlet_final);
        }
    }
}
