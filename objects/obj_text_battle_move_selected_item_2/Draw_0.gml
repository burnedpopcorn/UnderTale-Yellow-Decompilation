global.item_object_hold = id;
draw_x_disjoint = 324;
draw_y_disjoint = 20;
draw_set_font(global.font_type_text);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
item_slot = global.item_slot[2];
script_execute(scr_battle_draw_item_names);
