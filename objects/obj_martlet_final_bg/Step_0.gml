if (live_call())
    return global.live_result;

if (fade_out == true)
{
    if (draw_alpha > 0)
        draw_alpha -= 0.1;
    
    exit;
}

if (draw_alpha < 1)
    draw_alpha += 0.1;

max_size_x = 640;
max_size_y = 250;
grid_size_x = 600;
grid_size_y = 220;
bg_grid_offset = 10;
