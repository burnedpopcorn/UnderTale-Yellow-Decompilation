event_inherited();

if (npc_flag >= 3 || global.geno_complete[3] == true || global.geno_complete[2] == true)
{
    instance_destroy();
    instance_destroy(obj_swing_interact);
}
