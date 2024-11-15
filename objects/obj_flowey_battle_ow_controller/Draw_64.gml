var xx, xx2, yy, yy2, hp_current;

if (live_call())
    return global.live_result;

xx = 140;
xx2 = 180;
yy = 220;
yy2 = 230;
hp_current = global.current_hp_self / global.max_hp_self;
draw_set_color(c_black);
draw_set_alpha(gui_alpha);
draw_set_color(c_white);
draw_rectangle(xx - 2, yy - 2, xx2 + 2, yy2 + 2, false);
draw_healthbar(xx, yy, xx2, yy2, hp_current * 100, c_red, c_yellow, c_yellow, 0, true, false);
draw_set_alpha(1);
