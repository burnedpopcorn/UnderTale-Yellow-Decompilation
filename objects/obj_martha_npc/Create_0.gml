if (global.geno_complete[2] || global.dunes_flag[0] > 0 || global.route == 3)
    instance_destroy();

event_inherited();

if (npc_flag == 2 || npc_flag == 3)
    sprite_index = spr_martha_coffee_snowdin_yellow;

if (npc_flag == 4)
    sprite_index = spr_martha_snowdin_yellow;

waiter = 0;
