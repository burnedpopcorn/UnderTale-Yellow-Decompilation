var wid;

if (live_call())
    return global.live_result;

x += obj_raft_cutscene.scroll_speed;
wid = sprite_width;

if (x < (0 - wid))
    x = room_width - wid;
