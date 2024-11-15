function scr_battle_core_directory_action_3_selected_text()
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
            script_execute(scr_dialogue_battle_action_selected_action_3_craniex);
        else if (battle_enemy_name == "ms mettaton")
            script_execute(scr_dialogue_battle_action_selected_action_3_ms_mettaton);
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_flier_a);
        }
        else if (battle_enemy_name == "flier b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_flier_b);
        }
        else if (battle_enemy_name == "flier c")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_flier_c);
        }
        else if (battle_enemy_name == "sweet corn a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_sweet_corn_a);
        }
        else if (battle_enemy_name == "sweet corn b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_sweet_corn_b);
        }
        else if (battle_enemy_name == "crispy scroll a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_crispy_scroll_a);
        }
        else if (battle_enemy_name == "rorrim a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_rorrim_a);
        }
        else if (battle_enemy_name == "decibat")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_decibat);
        }
        else if (battle_enemy_name == "micro froggit")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_micro_froggit);
        }
        else if (battle_enemy_name == "insomnitot a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_insomnitot_a);
        }
        else if (battle_enemy_name == "insomnitot b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_insomnitot_b);
        }
        else if (battle_enemy_name == "know cone a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_know_cone_a);
        }
        else if (battle_enemy_name == "know cone b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_know_cone_b);
        }
        else if (battle_enemy_name == "frostermit a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_frostermit_a);
        }
        else if (battle_enemy_name == "trihecta")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_trihecta);
        }
        else if (battle_enemy_name == "tri")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_tri);
        }
        else if (battle_enemy_name == "hec")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_hec);
        }
        else if (battle_enemy_name == "ta")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_ta);
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_martlet_pacifist);
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_martlet_genocide);
        }
        else if (battle_enemy_name == "dunebud a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_dunebud_a);
        }
        else if (battle_enemy_name == "dunebud b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_dunebud_b);
        }
        else if (battle_enemy_name == "bowll a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_bowll_a);
        }
        else if (battle_enemy_name == "slither a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_slither_a);
        }
        else if (battle_enemy_name == "slither b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_slither_b);
        }
        else if (battle_enemy_name == "el bailador")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_el_bailador);
        }
        else if (battle_enemy_name == "flower girls")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_flower_girls);
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_ceroba);
        }
        else if (battle_enemy_name == "starlo")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_starlo);
        }
        else if (battle_enemy_name == "tellyvis a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_tellyvis_a);
        }
        else if (battle_enemy_name == "jandroid a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_jandroid_a);
        }
        else if (battle_enemy_name == "goosic a")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_goosic_a);
        }
        else if (battle_enemy_name == "jandroid b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_jandroid_b);
        }
        else if (battle_enemy_name == "goosic b")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_goosic_b);
        }
        else if (battle_enemy_name == "sousborg")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_sousborg);
        }
        else if (battle_enemy_name == "axis")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_axis);
        }
        else if (battle_enemy_name == "macro froggit")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_macro);
        }
        else if (battle_enemy_name == "axis genocide")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_axis_geno);
        }
        else if (battle_enemy_name == "guardener")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_guardener);
        }
        else if (battle_enemy_name == "ed" || battle_enemy_name == "ace" || battle_enemy_name == "moray" || battle_enemy_name == "mooch")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_feisty_four);
        }
        else if (battle_enemy_name == "flowey")
        {
            if (global.flowey_act[2] == 4)
            {
                message[0] = "* Recovered 30% of your HP!";
            }
            else
            {
                message[0] = "";
                script_execute(scr_battle_core_directory_action_3_selected_event);
                instance_destroy();
            }
        }
        else if (battle_enemy_name == "ceroba")
        {
            script_execute(scr_dialogue_battle_action_selected_action_3_ceroba_pacifist);
        }
    }
}
