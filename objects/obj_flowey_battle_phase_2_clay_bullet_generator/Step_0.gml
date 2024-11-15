if (live_call())
    return global.live_result;

randx = irandom_range(0, room_width);
not_randy = room_height + 50;

if (generation_speed == 0)
{
    instance_create_depth(randx, not_randy, obj_flowey_battle_final.depth + 2, obj_flowey_battle_phase_2_clay_bullet);
    generation_speed = default_generation_speed;
}

generation_speed--;
