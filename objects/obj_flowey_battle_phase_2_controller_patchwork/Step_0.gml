var rng, xx, yy;

if (live_call())
    return global.live_result;

rng = irandom(hand_spawn_chance_curent);

if (!instance_exists(obj_flowey_battle_phase_2_yarn_weakpoint))
{
    if (!alarm[1])
        alarm[1] = 30;
}

if (rng == 1)
{
    xx = choose(130, 510);
    yy = choose(irandom_range(300, 420), obj_heart_battle_fighting_parent.y);
    instance_create_depth(xx, yy, -100, obj_flowey_battle_phase_2_yarn_hand_shoot);
    hand_spawn_chance_curent = hand_spawn_chance_max;
}
else if (hand_spawn_chance_curent > 1)
{
    hand_spawn_chance_curent -= 1;
}
