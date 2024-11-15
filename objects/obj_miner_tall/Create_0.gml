event_inherited();

if (global.dunes_flag[24] != 0)
{
    instance_create(x, y, obj_miner_tall_backtrack);
    instance_destroy();
}

if (global.geno_complete[2])
    instance_destroy();

can_talk = false;
