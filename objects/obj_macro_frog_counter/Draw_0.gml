var xx, yy;

if (live_call())
    return global.live_result;

xx = 580 + draw_x_offset;
yy = 20 + draw_y_offset;
draw_sprite_ext(spr_bigfrog_frogger_frog, 0, xx - 9, yy + 10, frog_scale * 2, frog_scale * 2, 0, c_white, 1);
shader_set(sh_flash);
draw_sprite_ext(spr_bigfrog_frogger_frog, 0, xx - 9, yy + 10, frog_scale * 2, frog_scale * 2, 0, c_white, frog_overlay_alpha);
shader_reset();
shader_reset();
draw_set_halign(fa_left);
draw_set_font(fnt_mainb);
draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_text(xx + 16, yy + 8, ": " + string(frog_count));
draw_set_valign(fa_top);
