if (obj_flowey_battle_phase_2_organic_head.hp_self <= 0 && !destroy_noloop)
{
    destroy_noloop = true;
    instance_create_depth(0, 0, -100, obj_flowey_battle_phase_2_stage_destroy_effect);
    
    if (!alarm[0])
        alarm[0] = 30;
}
