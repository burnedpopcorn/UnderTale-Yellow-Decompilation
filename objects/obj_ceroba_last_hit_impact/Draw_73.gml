if (yellow_flash)
    shader_set(sh_yellow);
else
    shader_set(sh_flash);

draw_sprite(sprite_index, image_index, x + random_range(-2, 2), y + random_range(2, 2));
shader_reset();
