var battle_box;

if (live_call())
    return global.live_result;

battle_box = 3154;
draw_set_color(c_black);
draw_set_alpha(draw_alpha);
draw_rectangle(battle_box.bbox_left - 4, battle_box.bbox_top - 4, battle_box.bbox_right + 4, battle_box.bbox_bottom + 4, false);
draw_set_alpha(1);
