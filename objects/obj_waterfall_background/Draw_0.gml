var i;

draw_set_alpha(0.7);

for (i = 0; i < length; i++)
    draw_sprite(sprite_index, image_index, x, y + (i * sprite_height));

draw_set_alpha(1);
