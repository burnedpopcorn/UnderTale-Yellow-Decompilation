function scr_determine_yellow_text_flags_yellow()
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
    }
    else if (battle_enemy_name == "flowey intro")
    {
    }
    else if (battle_enemy_name == "flier a")
    {
    }
    else if (battle_enemy_name == "penilla a")
    {
    }
    else if (battle_enemy_name == "sweet corn a")
    {
    }
    else if (battle_enemy_name == "crispy scroll a")
    {
    }
    else if (battle_enemy_name == "rorrim a")
    {
    }
    else if (battle_enemy_name == "decibat")
    {
    }
    else if (battle_enemy_name == "dalv")
    {
    }
    else if (battle_enemy_name == "micro froggit")
    {
    }
    else if (battle_enemy_name == "frostermit a")
    {
    }
    else if (battle_enemy_name == "insomnitot a")
    {
    }
    else if (battle_enemy_name == "know cone a")
    {
    }
    else if (battle_enemy_name == "trihecta" || battle_enemy_name == "tri")
    {
    }
    else if (battle_enemy_name == "martlet pacifist")
    {
    }
    else if (battle_enemy_name == "martlet genocide")
    {
    }
    else if (battle_enemy_name == "shufflers")
    {
    }
}