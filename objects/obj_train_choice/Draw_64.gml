var xx = 160;
var yy = 60;
draw_set_alpha(draw_alpha);
draw_sprite_ext(spr_dialoguebox, 1, xx, yy + 56, 4.5, 3, image_angle, c_white, image_alpha);
draw_sprite_ext(spr_dialoguebox, 0, xx, yy + 56, 4.4, 2.9, image_angle, c_white, image_alpha);
draw_set_colour(c_white);
draw_set_font(fnt_battle);
draw_set_halign(fa_center);

if (selection == 1)
    d3d_set_fog(true, c_gray, 0, 0);

draw_sprite(spr_ed_pose, 15, 80, 120);
d3d_set_fog(false, c_white, 0, 0);
draw_text(80, 180, string_hash_to_newline(choice[0]));

if (selection == 0)
    d3d_set_fog(true, c_gray, 0, 0);

draw_sprite(spr_moray_pose, 15, 240, 100);
draw_sprite(spr_ace_pose, 14, 220, 140);
draw_sprite(spr_mooch_pose, 12, 260, 140);
d3d_set_fog(false, c_white, 0, 0);
draw_text(240, 180, string_hash_to_newline(choice[1]));

if (selection == 0)
    draw_sprite(spr_heart_yellow_overworld, 0, 80, 160);

if (selection == 1)
    draw_sprite(spr_heart_yellow_overworld, 0, 240, 160);

draw_text_transformed(160, 40, string_hash_to_newline(floor(train_timer / 30)), 2, 2, 0);
draw_set_alpha(1);
