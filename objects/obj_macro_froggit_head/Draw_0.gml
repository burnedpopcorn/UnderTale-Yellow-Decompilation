draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
shader_set(sh_silhouette);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, obj_macro_froggit_body.draw_silhouette_alpha);
shader_reset();
