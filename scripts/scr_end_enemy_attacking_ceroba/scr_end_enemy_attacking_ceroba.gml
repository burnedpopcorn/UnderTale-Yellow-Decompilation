function scr_end_enemy_attacking_ceroba()
{
    if (live_call())
        return global.live_result;
    
    if (global.attack_cycle == 9)
    {
        global.attack_cycle = 10;
        instance_create(0, 0, obj_battle_ceroba_phase_1_transformation);
        return true;
    }
    else
    {
        return false;
    }
}
