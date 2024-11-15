if (live_call())
    return global.live_result;

if (counter_shake == 1)
{
    shake_intensity += 0.005;
    draw_x_offset = random_range(-shake_intensity, shake_intensity);
    draw_y_offset = random_range(-shake_intensity, shake_intensity);
    exit;
}
else if (counter_shake == 2)
{
    frog_overlay_alpha = 1;
    frog_scale = 2;
    audio_play_sound(snd_undertale_flash, 1, 0);
    counter_shake = 0;
}

frog_overlay_alpha = lerp(frog_overlay_alpha, 0, 0.15);
frog_scale = lerp(frog_scale, 1, 0.15);

if (frog_scale < 1.05)
    frog_scale = 1;

if (frog_overlay_alpha < 0.05)
    frog_overlay_alpha = 0;

if (draw_x_offset > 0.01)
    draw_x_offset = lerp(draw_x_offset, 0, 0.15);
else
    draw_x_offset = 0;

draw_y_offset = 0;
