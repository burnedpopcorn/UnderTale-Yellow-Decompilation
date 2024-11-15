var j;

j = 2;
i = ds_list_size(x_list) - 1;

while (i >= 0)
    i -= 1;

if (bullet_hit_draw_timer > 0)
    shader_set(sh_flash);

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, image_alpha);
shader_reset();
