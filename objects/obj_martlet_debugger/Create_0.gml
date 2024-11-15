var i;

if (live_call())
    return global.live_result;

for (i = 1; i < array_length(global.item_slot); i++)
    global.item_slot[i] = "Homemade Cookie";

global.attack_cycle = 0;
