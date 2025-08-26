function scr_damage_special_condition_reticle_yellow()
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
    
    if (battle_enemy_name == "micro froggit")
    {
        if (outline <= (small_circle * 0.25))
            global.enemy_vulnerable = true;
        else
            global.enemy_vulnerable = false;
    }
}
