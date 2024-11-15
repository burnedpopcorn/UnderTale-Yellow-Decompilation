var wid;

if (live_call())
    return global.live_result;

x += (obj_raft_cutscene.scroll_speed * 0.5);
wid = sprite_width;

if (x < (0 - wid))
    x = room_width - wid;

if (part_system_exists(part_sys))
    part_system_position(part_sys, x + 10, y + (length * sprite_height));
