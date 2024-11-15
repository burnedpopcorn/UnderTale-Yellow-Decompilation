if (live_call())
    return global.live_result;

draw_set_font(fnt_main);
draw_set_halign(fa_left);
draw_set_alpha(choice_alpha);
draw_set_font(fnt_battle);
draw_set_color(c_white);
draw_set_halign(fa_center);

if (p[1] == true && choice_alpha >= 1)
    draw_set_color(c_yellow);

draw_text(120, 100, string_hash_to_newline("RESET"));
draw_set_color(c_white);

if (p[2] == true)
    draw_set_color(c_yellow);

draw_text(200, 100, string_hash_to_newline("STAY"));
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_alpha(1);
