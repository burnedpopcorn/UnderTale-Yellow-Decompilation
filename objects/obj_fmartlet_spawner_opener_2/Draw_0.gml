var battle_box;

if (live_call())
    return global.live_result;

battle_box = 3154;
draw_set_color(c_black);
draw_set_alpha(bbox_overlay_alpha);
draw_rectangle(battle_box.bbox_left, battle_box.bbox_top, battle_box.bbox_right, battle_box.bbox_bottom, false);
draw_set_alpha(1);
