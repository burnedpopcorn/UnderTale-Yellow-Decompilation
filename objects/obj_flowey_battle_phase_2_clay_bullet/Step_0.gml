if (live_call())
    return global.live_result;

if (!instance_exists(obj_flowey_battle_phase_2_clay_growing))
{
    instance_destroy();
    exit;
}

move_towards_point(obj_flowey_battle_phase_2_clay_growing.x, obj_flowey_battle_phase_2_clay_growing.y, bullet_speed);
bullet_speed += 0.2;

if (line_alpha < 1)
    line_alpha += 0.2;
