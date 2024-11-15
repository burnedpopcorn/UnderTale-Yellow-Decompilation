function scr_end_enemy_attacking_axis_geno()
{
    if (global.geno_complete[4] == false && global.geno_complete[3] == true)
    {
        if (global.enemy_sparing == true)
            return false;
        
        if (global.attack_cycle >= (global.attack_cycle_max - 4))
        {
            instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
            instance_create(0, 0, obj_quote_battle_axis_neutral_geno_end);
            return true;
        }
        else
        {
            return false;
        }
    }
    else if (global.attack_cycle >= global.attack_cycle_max)
    {
        instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
        instance_create(0, 0, obj_quote_battle_axis_geno_end);
        return true;
    }
    else
    {
        return false;
    }
}
