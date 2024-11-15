event_inherited();
waiter = 0;

if (global.geno_complete[4])
    instance_destroy();

instance_create_depth(x, y, depth - 1, obj_npc_hermit_staff);
