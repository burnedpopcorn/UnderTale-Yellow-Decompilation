if (bullet_hit_draw_timer > 0)
    shader_set(sh_flash);

draw_sprite_ext(spr_ceroba_ribbon_base, 0, x, y - 12, image_xscale, image_yscale, 0, c_white, image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
shader_reset();
