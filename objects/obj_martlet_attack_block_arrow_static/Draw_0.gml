var draw_alpha;

if (live_call())
    return global.live_result;

draw_alpha = 1;

if (cooldown_timer < cooldown_timer_max)
    draw_alpha = 0.25;

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, image_blend, draw_alpha);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
