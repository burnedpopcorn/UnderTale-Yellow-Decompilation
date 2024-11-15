draw_sprite_ext(spr_andrd_stick_base, 0, mobile_stick_xx, mobile_stick_yy, button_scale, button_scale, 0, c_white, stick_alpha);
draw_sprite_ext(spr_andrd_stick, 0, mobile_stick_xx + stick_x_dist, mobile_stick_yy + stick_y_dist, button_scale, button_scale, 0, c_white, stick_alpha);
draw_sprite_ext(spr_andrd_a, 0, mobile_a_xx, mobile_a_yy, button_scale, button_scale, 0, c_white, 1 - (0.5 * a_pressed));
draw_sprite_ext(spr_andrd_b, 0, mobile_b_xx, mobile_b_yy, button_scale, button_scale, 0, c_white, 1 - (0.5 * b_pressed));
draw_sprite_ext(spr_andrd_y, 0, mobile_a_xx, mobile_y_yy, button_scale, button_scale, 0, c_white, 1 - (0.5 * y_pressed));
