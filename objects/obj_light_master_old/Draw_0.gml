var i;

if (live_call())
    return global.live_result;

for (i = 0; i < array_length(shadow_actor); i += 1)
{
    with (shadow_actor[i])
    {
        draw_set_blend_mode(bm_add);
        draw_set_alpha(other.light_amount[i]);
        draw_sprite(sprite_index, image_index, x, y);
        draw_set_alpha(1);
        draw_set_blend_mode(bm_normal);
    }
}
