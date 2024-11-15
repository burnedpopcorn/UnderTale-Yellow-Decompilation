var dir_offset, distance, circle_alpha, custom_col, i, xx, yy;

draw_self();

if (is_charging && !is_charged)
{
    draw_set_circle_precision(8);
    dir_offset = 180 * charge_percentage;
    distance = 25 * charge_percentage;
    circle_alpha = 0.8 - charge_percentage;
    custom_col = make_color_rgb(255, 255 - (255 * charge_percentage), 255);
    draw_set_color(custom_col);
    draw_set_alpha(circle_alpha);
    
    for (i = 0; i < 360; i += 90)
    {
        xx = x + lengthdir_x(distance, i + dir_offset);
        yy = y + lengthdir_y(distance, i + dir_offset);
        draw_circle(xx, yy, 6, false);
    }
    
    draw_set_alpha(1);
    draw_set_circle_precision(24);
}

shader_set(sh_flash);
draw_set_alpha(charged_overlay_alpha);
draw_sprite(sprite_index, image_index, x, y);
draw_set_alpha(1);
shader_reset();

if (is_charged)
{
    shader_set(sh_flash);
    draw_set_alpha(charged_overlay_alpha);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, (sin(current_time / 100) * 0.15) + 0.15);
    draw_set_alpha(1);
    shader_reset();
}
