if (live_call())
    return global.live_result;

prd_max = 40;

if (can_spawn_left)
{
    if (irandom(left_prd) == 1)
    {
        instance_create_depth(choose(irandom_range(210, 220), irandom_range(260, 270)), irandom_range(obj_intermission_raft.y + 150, obj_intermission_raft.y + 180), obj_intermission_raft.depth + 1, obj_credits_intermission_ripple);
        left_prd = prd_max;
        can_spawn_left = false;
        alarm[0] = 5;
    }
    else if (left_prd > prd_min)
    {
        left_prd--;
    }
}

with (obj_credits_intermission_ripple)
    image_speed = 1;
