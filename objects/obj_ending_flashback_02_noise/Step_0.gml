if (!fade_out)
{
    draw_alpha = lerp(draw_alpha, 1, 0.15);
    
    if (draw_alpha > 0.99)
        draw_alpha = 1;
}
else
{
    draw_alpha = lerp(draw_alpha, 0, 0.15);
    
    if (draw_alpha < 0.01)
    {
        draw_alpha = 0;
        audio_stop_sound(static_noise);
        instance_destroy();
    }
}

audio_sound_gain(static_noise, draw_alpha, 10);
