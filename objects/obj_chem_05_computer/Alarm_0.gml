if (live_call())
    return global.live_result;

if (screen_cursor == "_")
    screen_cursor = "";
else
    screen_cursor = "_";

alarm[0] = room_speed;
