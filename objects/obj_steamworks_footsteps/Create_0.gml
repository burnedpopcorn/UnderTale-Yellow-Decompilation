footstep_timer = 0;

if (instance_exists(obj_npc_parent))
{
    with (obj_npc_parent)
        footstep_timer_npc = 0;
}

if (global.party_member != -4)
{
    with (global.party_member)
        footstep_timer_follower = 0;
}
