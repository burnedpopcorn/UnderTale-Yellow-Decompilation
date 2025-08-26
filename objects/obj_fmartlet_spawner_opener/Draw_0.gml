if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
draw_set_color(c_black);
draw_set_alpha(bbox_overlay_alpha);
draw_rectangle(battle_box.bbox_left, battle_box.bbox_top, battle_box.bbox_right, battle_box.bbox_bottom, false);
draw_set_alpha(1);
