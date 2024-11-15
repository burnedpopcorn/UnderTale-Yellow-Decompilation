draw_set_alpha(storm_alpha_current);
draw_sprite_tiled(spr_sandstorm_bg, 0, __view_get(e__VW.XView, 0) - storm_x_pos, __view_get(e__VW.YView, 0));
draw_sprite_tiled(spr_sandstorm_fg, 0, __view_get(e__VW.XView, 0) - storm_x_pos, __view_get(e__VW.YView, 0));
draw_set_alpha(1);
