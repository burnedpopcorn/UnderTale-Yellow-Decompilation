if (live_call())
    return global.live_result;

draw_set_alpha(line_alpha);
draw_line_width_color(x, y, obj_flowey_battle_phase_2_clay_growing.x, obj_flowey_battle_phase_2_clay_growing.y, 2, c_black, c_white);
draw_set_alpha(1);
draw_self();
