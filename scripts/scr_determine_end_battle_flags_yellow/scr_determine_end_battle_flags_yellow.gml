function scr_determine_end_battle_flags_yellow()
{
    var battle_enemy_name;
    
    if (global.battling_boss == true)
    {
        battle_enemy_name = global.battle_enemy_name;
    }
    else
    {
        var act_number = global.act_number;
        
        switch (act_number)
        {
            case 1:
                battle_enemy_name = global.battle_enemy_name_1;
                break;
            
            case 2:
                battle_enemy_name = global.battle_enemy_name_2;
                break;
            
            case 3:
                battle_enemy_name = global.battle_enemy_name_3;
                break;
            
            default:
                battle_enemy_name = global.battle_enemy_name_1;
        }
    }
    
    if (battle_enemy_name == "froggit intro")
    {
        if (global.enemy_dead == true)
            global.flag[9] = true;
        
        global.ruins_flag[0] = 1;
    }
    else if (battle_enemy_name == "flowey intro")
    {
        global.flag[24] = 1;
    }
    else if (battle_enemy_name == "flier a")
    {
        global.dark_ruins_flag[3] = 1;
    }
    else if (battle_enemy_name == "penilla a")
    {
        global.dark_ruins_flag[7] = 1;
    }
    else if (battle_enemy_name == "sweet corn a")
    {
        global.dark_ruins_flag[8] = 1;
    }
    else if (battle_enemy_name == "crispy scroll a")
    {
        global.dark_ruins_flag[14] = 1;
    }
    else if (battle_enemy_name == "rorrim a")
    {
        global.dark_ruins_flag[12] = 1;
    }
    else if (battle_enemy_name == "decibat")
    {
        if (global.enemy_spared == true && global.action_2_selected_count >= 5)
            global.flag[15] = 1;
        else if (global.enemy_dead == true)
            global.flag[15] = 3;
        else
            global.flag[15] = 2;
    }
    else if (battle_enemy_name == "dalv")
    {
        if (global.enemy_spared == true)
        {
            global.flag[17] = 1;
            
            if (global.enemy_mode == 1)
                global.flag[17] = 3;
            
            if (global.enemy_mode == 2)
                global.flag[17] = 4;
        }
        else
        {
            global.flag[17] = 2;
        }
        
        ds_list_clear(global.encounter_list);
    }
    else if (battle_enemy_name == "micro froggit")
    {
        if (global.enemy_spared == true)
        {
            global.flag[18] = 1;
        }
        else
        {
            if (global.route == 2)
                global.route = 1;
            
            global.flag[18] = 2;
        }
    }
    else if (battle_enemy_name == "frostermit a")
    {
        global.snowdin_flag_enemy[1] = 1;
    }
    else if (battle_enemy_name == "insomnitot a")
    {
        global.snowdin_flag_enemy[2] = 1;
    }
    else if (battle_enemy_name == "know cone a")
    {
        global.snowdin_flag_enemy[3] = 1;
    }
    else if (battle_enemy_name == "trihecta" || battle_enemy_name == "tri")
    {
        global.snowdin_flag_enemy[4] = 1;
    }
    else if (battle_enemy_name == "shufflers")
    {
        global.snowdin_flag[8] = 1;
        global.sound_carry_overworld = false;
    }
    else if (battle_enemy_name == "martlet pacifist")
    {
        if (global.enemy_mode == 10)
            global.snowdin_flag[13] = 2;
        else if (global.enemy_mode == 11)
            global.snowdin_flag[13] = 1;
        else if (global.enemy_mode == 12)
            global.snowdin_flag[13] = 1;
        
        ds_list_clear(global.encounter_list);
    }
    else if (battle_enemy_name == "martlet genocide")
    {
        if (global.enemy_mode == 5)
        {
            global.snowdin_flag[13] = 3;
            global.snowdin_flag[21] = 0;
        }
        else if (global.enemy_mode == 8)
        {
            global.snowdin_flag[13] = 3;
            global.snowdin_flag[21] = 1;
        }
        else if (global.enemy_betrayed == true)
        {
            global.snowdin_flag[13] = 3;
            global.snowdin_flag[21] = 1;
        }
        else if (global.enemy_spared == true)
        {
            global.snowdin_flag[13] = 3;
            global.snowdin_flag[21] = 0;
        }
        
        ds_list_clear(global.encounter_list);
    }
    else if (battle_enemy_name == "el bailador")
    {
        global.dunes_flag[26] = 1;
        
        if (global.enemy_dead == true)
            global.dunes_flag[26] = 3;
        else if (global.route == 3)
            global.route = 1;
    }
    else if (battle_enemy_name == "flower girls")
    {
        global.dunes_flag[31] = 4;
    }
    else if (battle_enemy_name == "starlo")
    {
        ds_list_clear(global.encounter_list);
        global.dunes_flag[24] = 1;
        
        if (global.enemy_dead == true)
            global.dunes_flag[24] = 2;
    }
    else if (battle_enemy_name == "ceroba genocide")
    {
        ds_list_clear(global.encounter_list);
        global.dunes_flag[40] = 1;
    }
    else if (battle_enemy_name == "guardener")
    {
        global.sworks_flag[20] = 1;
        
        if (global.enemy_dead == true)
            global.sworks_flag[20] = 3;
    }
    else if (battle_enemy_name == "axis")
    {
        var current_turn = global.special_action_count;
        ds_list_clear(global.encounter_list);
        global.sworks_flag[31] = 1;
        
        if (global.enemy_dead == true)
        {
            if (global.route == 2)
                global.sworks_flag[58] = 1;
            
            if (current_turn >= 7)
                global.sworks_flag[31] = 4;
            else
                global.sworks_flag[31] = 3;
        }
    }
    else if (battle_enemy_name == "axis genocide")
    {
        ds_list_clear(global.encounter_list);
        global.sworks_flag[31] = 1;
        
        if (global.enemy_dead == true)
            global.sworks_flag[31] = 3;
        
        if (global.geno_complete[4] == false)
            global.route = 1;
    }
    else if (battle_enemy_name == "ceroba")
    {
    }
}
