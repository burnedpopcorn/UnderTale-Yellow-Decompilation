x_offset = irandom_range(-1, 1);
y_offset = irandom_range(-1, 1);

if (hp_self <= 0 && !destroy_self_noloop)
{
    destroy_self_noloop = true;
    obj_flowey_battle_final.stage_switch = 0;
    instance_create_depth(0, 0, -100, obj_flowey_battle_phase_2_stage_destroy_effect);
}

if (instance_exists(obj_flowey_battle_phase_2_transition))
{
    if (obj_flowey_battle_phase_2_transition.fade_out == true)
    {
        with (obj_flowey_battle_phase_2_side_vine)
            instance_destroy();
        
        instance_destroy();
    }
}

event_inherited();
