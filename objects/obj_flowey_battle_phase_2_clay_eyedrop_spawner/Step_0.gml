if (live_call())
    return global.live_result;

randx = irandom_range(0, 3);
randy = irandom_range(0, 20);

if (generation_speed <= 0)
{
    instance_create_depth(preset_positions[randx], randy, obj_flowey_battle_final.depth - 1, obj_flowey_battle_phase_2_clay_eyedrop);
    generation_speed = default_generation_speed;
}

generation_speed--;
