var xx, option;

if (live_call())
    return global.live_result;

draw_set_color(c_white);
draw_set_font(fnt_mainb);
draw_set_halign(fa_center);
draw_text(__view_get(e__VW.XView, 0) + 200, __view_get(e__VW.YView, 0) + 13, string_hash_to_newline("GAME CONFIG"));
draw_set_font(fnt_battle);
draw_set_halign(fa_left);
xx = __view_get(e__VW.XView, 0) + 20;

if (position == 0)
    draw_set_color(c_yellow);

draw_text(xx, __view_get(e__VW.YView, 0) + 44, string_hash_to_newline("Exit"));
draw_set_color(c_white);
draw_text(xx, __view_get(e__VW.YView, 0) + 110, string_hash_to_newline("ACCESSIBILITY"));

if (position == 2)
    draw_set_color(c_yellow);

draw_text(xx, __view_get(e__VW.YView, 0) + 130, string_hash_to_newline("Shake on hurt:"));
draw_set_color(c_white);

if (position == 3)
    draw_set_color(c_yellow);

draw_text(xx, __view_get(e__VW.YView, 0) + 145, string_hash_to_newline("Always allow retry:"));
draw_set_color(c_white);

if (position == 4)
    draw_set_color(c_yellow);

draw_text(xx, __view_get(e__VW.YView, 0) + 160, string_hash_to_newline("AUTO-SPRINT:"));
draw_set_color(c_white);

if (position == 5)
    draw_set_color(c_yellow);

draw_text(xx, __view_get(e__VW.YView, 0) + 175, string_hash_to_newline(string("AUTO-FIRE toggle ({0}):", global.pause_key)));
draw_set_color(c_white);

if (position == 6)
    draw_set_color(c_yellow);

draw_text(xx, __view_get(e__VW.YView, 0) + 190, string_hash_to_newline("AUTO-RHYTHM"));
draw_set_color(c_white);

if (position == 7)
    draw_set_color(c_yellow);

draw_text(xx, __view_get(e__VW.YView, 0) + 205, string_hash_to_newline("EASY MODE"));
draw_set_color(c_white);

if (position == 1)
    draw_set_color(c_yellow);

draw_text(xx, __view_get(e__VW.YView, 0) + 79, string_hash_to_newline("Joystick Config"));
draw_set_color(c_white);
draw_set_color(c_white);
option = "";

if (global.option_screenshake_toggle)
    option = "ON";
else
    option = "OFF";

draw_text(xx + 180, __view_get(e__VW.YView, 0) + 130, string_hash_to_newline(option));

if (global.option_retry_toggle)
    option = "ON";
else
    option = "OFF";

draw_text(xx + 180, __view_get(e__VW.YView, 0) + 145, string_hash_to_newline(option));

if (global.option_autorun)
    option = "ON";
else
    option = "OFF";

draw_text(xx + 180, __view_get(e__VW.YView, 0) + 160, string_hash_to_newline(option));

if (global.option_autoshoot)
    option = "ON";
else
    option = "OFF";

draw_text(xx + 180, __view_get(e__VW.YView, 0) + 175, string_hash_to_newline(option));

if (global.option_autorhythm)
    option = "ON";
else
    option = "OFF";

draw_text(xx + 180, __view_get(e__VW.YView, 0) + 190, string_hash_to_newline(option));

if (global.option_easymode)
    option = "ON";
else
    option = "OFF";

draw_text(xx + 180, __view_get(e__VW.YView, 0) + 205, string_hash_to_newline(option));
