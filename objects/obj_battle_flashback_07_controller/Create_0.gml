if (live_call())
    return global.live_result;

actor_martlet = instance_create_depth(1140, 880, -880, obj_martlet_npc);

with (actor_martlet)
{
    npc_direction = "up";
    can_walk = false;
}

scene = 0;
cutscene_timer = 0;
