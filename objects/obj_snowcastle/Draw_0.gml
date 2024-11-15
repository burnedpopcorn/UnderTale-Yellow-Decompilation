if (live_call())
    return global.live_result;

draw_self();

if (global.route != 3)
    draw_sprite(spr_snowcastle_flag_full, 0, x + 18, y - 60);
else
    draw_sprite(spr_snowcastle_flag_half, 0, x + 18, y - 60);
