if (live_call())
    return global.live_result;

if (fade_out == true)
{
    if (draw_alpha >= 0)
        draw_alpha -= 0.1;
}
