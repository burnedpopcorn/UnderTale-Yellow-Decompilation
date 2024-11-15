event_inherited();

if (!instance_exists(obj_martlet_follower))
    npc_flag = 1;

if (npc_flag > 0)
    instance_destroy();
