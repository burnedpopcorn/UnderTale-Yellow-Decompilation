var glitch_number, i, variation, xx, yy;

if (live_call())
    return global.live_result;

draw_set_alpha(white_overlay_alpha);
draw_set_color(c_white);
draw_rectangle(0, 0, 320, 240, false);
draw_set_alpha(1);

if (draw_glitches == true)
{
    draw_set_alpha(0.25);
    glitch_number = irandom_range(4, 12);
    
    for (i = 0; i < glitch_number; i++)
    {
        variation = choose(1, 2);
        
        if (variation == 1)
        {
            draw_sprite_part(spr_battle_flowey_gray_idle, 0, irandom_range(0, 640), irandom_range(0, 640), irandom_range(32, 64), irandom_range(32, 64), irandom_range(32, 608), irandom_range(32, 388));
        }
        else
        {
            draw_set_color(c_black);
            xx = irandom_range(32, 608);
            yy = irandom_range(32, 388);
            draw_rectangle(xx, yy, xx + choose(16, 128), yy + choose(16, 128), false);
        }
    }
    
    draw_set_alpha(1);
}
