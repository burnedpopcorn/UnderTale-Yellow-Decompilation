if (live_call())
    return global.live_result;

if (sprite_index == spr_martlet_final_intro_4)
{
    if (floor(image_index) == 134 || floor(image_index) == 135 || floor(image_index) == 145 || floor(image_index) == 146)
    {
        draw_set_color(make_color_rgb(25, 31, 37));
        draw_rectangle(0, 0, 640, 480, false);
        draw_sprite(sprite_index, image_index, x, y);
    }
}
