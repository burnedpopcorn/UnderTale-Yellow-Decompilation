draw_set_alpha(0.6 * overlay_alpha);
draw_set_color(c_black);
draw_rectangle(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0), false);
draw_set_alpha(1);
