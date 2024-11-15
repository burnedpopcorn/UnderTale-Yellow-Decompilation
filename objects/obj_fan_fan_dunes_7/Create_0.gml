event_inherited();

if (global.geno_complete[2] || global.geno_complete[3])
    instance_destroy();

waiter = 0;

if (global.party_member != -4 || npc_flag == 3)
{
    instance_destroy();
    npc_flag = 3;
}
