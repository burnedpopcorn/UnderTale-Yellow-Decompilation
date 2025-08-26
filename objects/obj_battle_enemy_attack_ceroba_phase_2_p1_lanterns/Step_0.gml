if (!instance_exists(obj_ceroba_attack_fire_mask))
{
    if (!alarm[0])
        alarm[0] = 45;
}

if (instance_exists(obj_ceroba_phase_2_shield))
{
    var shield_perc = obj_ceroba_phase_2_shield.fill_percentage;
    
    if (shield_perc >= 1)
        instance_destroy();
}
