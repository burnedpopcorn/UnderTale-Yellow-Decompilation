if (live_call())
    return global.live_result;

if (instance_exists(obj_ceroba_phase_2_shield))
{
    var shield_perc = obj_ceroba_phase_2_shield.fill_percentage;
    
    if (shield_perc >= 1)
    {
        instance_destroy();
        exit;
    }
}
