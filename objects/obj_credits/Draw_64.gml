var xx, xx2, yy2;

draw_set_alpha(1 - alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, 640, 480, false);
draw_set_alpha(1);
display_set_gui_size(640, 480);
xx = room_width / 2;
xx2 = 370;
yy2 = yy + 320;
draw_set_alpha(alpha);
draw_sprite(spr_logo_undertale, 1, 320, yy);
draw_sprite(logo_yellow, 1, 320, yy + 52);
draw_set_alpha(1);
draw_set_font(fnt_mainb);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_ext(xx, yy2, string_hash_to_newline(string_credits), -1, -1);
draw_set_color(c_yellow);
draw_text_ext(xx, yy2, string_hash_to_newline(string_credits_yellow), -1, -1);
draw_set_color(c_white);

if (draw_bye)
    draw_text(xx, 400, string_hash_to_newline("(Yes, this is the end.)"));

display_set_gui_size(320, 240);
