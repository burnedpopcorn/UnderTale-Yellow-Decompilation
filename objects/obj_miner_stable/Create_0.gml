if (global.dunes_flag[24] != 0)
{
    instance_create(x, y, obj_miner_stable_backtrack);
    instance_destroy();
}

if (global.geno_complete[2])
    instance_destroy();

event_inherited();
