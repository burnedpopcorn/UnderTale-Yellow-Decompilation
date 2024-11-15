var variation;

if (live_call())
    return global.live_result;

variation = choose(1, 2, 3);

switch (variation)
{
    case 1:
        instance_create_depth(180, 0, obj_flowey_battle_final.depth + 1, obj_flowey_battle_phase_2_lowpoly_vspike);
        instance_create_depth(240, -80, obj_flowey_battle_final.depth + 1, obj_flowey_battle_phase_2_lowpoly_vspike);
        instance_create_depth(400, -80, obj_flowey_battle_final.depth + 1, obj_flowey_battle_phase_2_lowpoly_vspike);
        instance_create_depth(460, 0, obj_flowey_battle_final.depth + 1, obj_flowey_battle_phase_2_lowpoly_vspike);
        break;
    
    case 2:
        instance_create_depth(240, -80, obj_flowey_battle_final.depth + 1, obj_flowey_battle_phase_2_lowpoly_vspike);
        instance_create_depth(400, -80, obj_flowey_battle_final.depth + 1, obj_flowey_battle_phase_2_lowpoly_vspike);
        instance_create_depth(320, 0, obj_flowey_battle_final.depth + 1, obj_flowey_battle_phase_2_lowpoly_vspike);
        break;
    
    case 3:
        instance_create_depth(180, 0, obj_flowey_battle_final.depth + 1, obj_flowey_battle_phase_2_lowpoly_vspike);
        instance_create_depth(240, -80, obj_flowey_battle_final.depth + 1, obj_flowey_battle_phase_2_lowpoly_vspike);
        instance_create_depth(320, -140, obj_flowey_battle_final.depth + 1, obj_flowey_battle_phase_2_lowpoly_vspike);
        instance_create_depth(400, -80, obj_flowey_battle_final.depth + 1, obj_flowey_battle_phase_2_lowpoly_vspike);
        instance_create_depth(460, 0, obj_flowey_battle_final.depth + 1, obj_flowey_battle_phase_2_lowpoly_vspike);
        break;
}

variation = irandom_range(-40, 40);
alarm[0] = attack_delay + variation;
