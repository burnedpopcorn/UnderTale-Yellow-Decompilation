if (live_call())
    return global.live_result;

randx = irandom_range(0, room_width);
randy = -10;

if (generation_speed <= 0)
{
    instance_create_depth(randx, randy, obj_flowey_battle_final.depth - 1, obj_flowey_battle_phase_2_clay_droop);
    generation_speed = default_generation_speed;
}

generation_speed--;
