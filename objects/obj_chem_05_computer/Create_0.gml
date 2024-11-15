if (live_call())
    return global.live_result;

screen_message = "[AWAITING INPUT]\n";

if (global.route == 3)
    screen_message = "ERROR: Power low";

screen_message_current = "";
screen_interact_noloop = false;
screen_state = 0;
compound_count = 0;
compound_active = -4;
compound_destroy = false;
screen_cursor = "_";
screen_counter = 0;
item_throw_noloop = false;
alarm[0] = room_speed;

if (global.sworks_flag[25] == 2)
    instance_create(264, 158, obj_steamworks_05_acid);

if (global.sworks_flag[25] >= 2)
    screen_state = 20;
