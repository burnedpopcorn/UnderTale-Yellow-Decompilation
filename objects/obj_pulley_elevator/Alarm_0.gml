var martlet_npc;

elevator_can_collide = false;
instance_create(obj_pl.x, obj_pl.y, obj_npc_clover_dunes_24);

if (global.party_member != -4)
{
    with (global.party_member)
    {
        martlet_npc = instance_create(x, y, obj_martlet_npc);
        martlet_npc.npc_dynamic_depth = false;
        martlet_npc.x_dest[0] = other.follower_x_target;
        martlet_npc.y_dest[0] = other.follower_y_target;
        martlet_npc.end_direction = "down";
        martlet_npc.can_walk = true;
        martlet_npc.image_blend = global.party_member.image_blend;
        instance_destroy();
    }
}

if (instance_exists(obj_shadow_master))
    obj_shadow_master.inst_number_last = 0;
