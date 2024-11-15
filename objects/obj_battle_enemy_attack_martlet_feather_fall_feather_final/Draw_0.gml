if (live_call())
    return global.live_result;

if (state == 2)
{
}

if (bullet_hit_draw_timer > 0)
    shader_set(sh_flash);

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_yellow, image_alpha);
shader_reset();
