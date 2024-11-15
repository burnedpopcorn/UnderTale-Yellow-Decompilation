if (live_call())
    return global.live_result;

draw_self();
draw_sprite_ext(spr_attack_goosic_disk_arrow, 0, x, y, 1, 1, direction, c_white, arrow_alpha);
