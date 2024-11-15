function scr_determine_end_battle_flags_yellow_new()
{
    var battle_enemy_name, act_number;
    
    if (global.battling_boss == true)
    {
        battle_enemy_name = global.battle_enemy_name;
    }
    else
    {
        act_number = global.act_number;
        
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
            global.ruins_flag[1] = 2;
        else
            global.ruins_flag[1] = 1;
    }
    else if (battle_enemy_name == "flowey intro")
    {
        global.dark_ruins_flag[2] = 1;
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
            global.dark_ruins_flag[13] = 1;
        else
            global.dark_ruins_flag[13] = 2;
    }
    else if (battle_enemy_name == "dalv")
    {
        if (global.enemy_spared == true)
            global.dark_ruins_flag[21] = 1;
        else
            global.dark_ruins_flag[21] = 2;
    }
    else if (battle_enemy_name == "micro froggit")
    {
        if (global.enemy_spared == true)
            global.dark_ruins_flag[17] = 1;
        else
            global.dark_ruins_flag[17] = 2;
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
    else if (battle_enemy_name == "martlet pacifist")
    {
        if (global.enemy_mode == 10)
        {
        }
        else if (global.enemy_mode == 11)
        {
        }
        else if (global.enemy_mode == 12)
        {
        }
    }
    else if (battle_enemy_name == "martlet genocide")
    {
        if (global.enemy_mode == 5)
        {
        }
        else if (global.enemy_betrayed == true)
        {
        }
        else if (global.enemy_spared == true)
        {
        }
    }
    else if (battle_enemy_name == "shufflers")
    {
        global.snowdin_flag[8] = 1;
    }
    else if (battle_enemy_name == "shufflers")
    {
        global.snowdin_flag[8] = 1;
    }
}
