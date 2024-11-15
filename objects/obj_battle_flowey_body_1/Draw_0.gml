var index;

if (live_call())
    return global.live_result;

if (can_draw_ghost)
    draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, alt_alpha * image_alpha);

index = 0;

if (base_sprite != 1934)
    index = image_index;

draw_sprite_ext(base_sprite, index, x, y, image_xscale, image_yscale, 0, c_white, base_alpha * image_alpha);
