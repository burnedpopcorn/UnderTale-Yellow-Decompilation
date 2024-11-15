waiter = 0;

if (global.dunes_flag[24] != 0)
{
    instance_destroy();
    instance_create_depth(x, y, depth, obj_miner_snake_backtrack);
}

if (global.geno_complete[2])
    instance_destroy();

event_inherited();
