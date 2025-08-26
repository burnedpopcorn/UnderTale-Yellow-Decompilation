if (live_call())
    return global.live_result;

if (note_destroy == true)
{
    draw_self();
    exit;
}

draw_sprite_clip_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 16777215, image_alpha, box.bbox_left + 5, box.bbox_top, box.sprite_width - 10, box.sprite_height - 37);
