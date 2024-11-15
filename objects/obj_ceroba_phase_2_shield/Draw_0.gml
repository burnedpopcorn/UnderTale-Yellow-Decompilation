if (bullet_hit_draw_timer > 0)
    shader_set(sh_flash);

draw_sprite_ext(spr_ceroba_shield_opaque_bg, 0, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
draw_sprite_ext(spr_ceroba_shield_filled, 0, x, y, fill_percentage_current * 2, fill_percentage_current * 2, 0, c_white, image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
shader_reset();
shader_set(sh_flash);
draw_sprite_ext(sprite_index, image_index, x, y, diamond_effect_scale, diamond_effect_scale, 0, c_white, diamond_effect_alpha);
shader_reset();
