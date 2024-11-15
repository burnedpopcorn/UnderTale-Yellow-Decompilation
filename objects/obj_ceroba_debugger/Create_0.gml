var i;

if (live_call())
    return global.live_result;

global.hotland_flag[2] = 3;
global.current_pp_self = 1;

for (i = 1; i < array_length(global.item_slot); i++)
    global.item_slot[i] = "Homemade Cookie";

global.attack_cycle = 10;
