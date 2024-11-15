var i;

if (live_call())
    return global.live_result;

draw_self();
shader_set(sh_meter);
color_fill = lerp(color_fill, curr_fill, 0.1);
shader_set_uniform_f(u_nb_rect, color_fill - 1);
shader_set_uniform_f(u_time, current_time / 1000);

for (i = 0; i < curr_fill; i++)
    draw_rectangle(x + cood_offset[0] + (i * 10), y + cood_offset[1], x + cood_offset[0] + (i * 10) + 8, y + cood_offset[1] + 14, false);

if (curr_fill != prev_fill)
{
    anim_curve = (power(a + b, a + b) / (power(a, a) * power(b, b))) * power(anim_timer, a) * power(1 - anim_timer, b) * 1.5;
    anim_timer += spd;
    rect_centered_coods = [x + cood_offset[0] + (curr_fill * 10) + 4, y + cood_offset[1] + 7];
    draw_rectangle(rect_centered_coods[0] - (4 * anim_curve), rect_centered_coods[1] - (7 * anim_curve), rect_centered_coods[0] + (4 * anim_curve), rect_centered_coods[1] + (7 * anim_curve), false);
    
    if (anim_timer >= 1)
    {
        if (curr_fill != 0)
            global.enemy_attacking = true;
        
        prev_fill = curr_fill;
        anim_timer = 0.3737;
    }
}

shader_reset();

if (prev_fill == 0)
{
    anim_curve = round((cos(current_time / 300) * 0.5) + 0.5) * 255;
    image_blend = make_color_rgb(255, 255, anim_curve);
}
