if (!instance_exists(obj_flowey_battle_phase_2_paper_weakpoint) && !destroy_noloop)
{
    instance_create_depth(0, 0, -100, obj_flowey_battle_phase_2_stage_destroy_effect);
    destroy_noloop = true;
    
    if (!alarm[0])
        alarm[0] = 30;
}
