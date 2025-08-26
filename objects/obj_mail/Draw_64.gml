var paper_color = make_colour_rgb(255, 255, 245);
draw_set_color(paper_color);
draw_rectangle(16, 0, 305, 240, 0);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_font(fnt_main);
draw_text_ext(160, text_draw_y, string_hash_to_newline(mail_text), 18, -1);

if (mail_text_colored != "")
{
    draw_set_color(mail_text_color);
    draw_text_ext(160, text_draw_y, string_hash_to_newline(mail_text_colored), 18, -1);
}

draw_set_color(c_black);
draw_set_halign(fa_left);
var mail_height = string_height_ext(string_hash_to_newline(mail_text), 18, -1);
var stamp_yy = (text_draw_y + mail_height) - 12;
var stamp_xx = 210;

if (mail_stamp != -4)
    draw_sprite(mail_stamp, 0, 210, stamp_yy);

draw_set_alpha(scroller_alpha);
var heart_y = 20 + (200 * (1 - ((text_draw_y - text_draw_min) / (text_draw_max - text_draw_min))));
draw_rectangle(296, 20, 300, 220, false);
draw_sprite(spr_heart_yellow_overworld, 0, 298, heart_y);
draw_set_alpha(1);
