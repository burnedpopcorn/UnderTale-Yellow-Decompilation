var subimg;

if (drawing_poster)
{
    draw_set_color(c_black);
    draw_set_alpha(draw_alpha / 2);
    draw_rectangle(0, 0, 320, 240, 0);
    draw_set_color(c_white);
    draw_set_alpha(draw_alpha);
    subimg = 0;
    
    if (global.dunes_flag[24] == 2 || global.dunes_flag[40] > 0)
        subimg = 1;
    
    if (global.route == 3)
        subimg = 0;
    
    draw_sprite(spr_poster_board, subimg, 160, 120);
    
    if (global.dunes_flag[35] < 1 && global.route != 3 && global.dunes_flag[40] == 0)
    {
        switch (global.dunes_flag[20])
        {
            case 3:
                draw_sprite(spr_poster_board_BREAK_2_OVERLAY, 0, 160, 120);
                break;
            
            case 5:
                draw_sprite(spr_poster_board_BREAK_3_OVERLAY, 0, 160, 120);
                break;
            
            case 7:
                draw_sprite(spr_poster_board_BREAK_4_OVERLAY, 0, 160, 120);
                break;
            
            case 9:
                draw_sprite(spr_poster_board_BREAK_5_OVERLAY, 0, 160, 120);
                break;
        }
    }
    else
    {
        draw_sprite(spr_poster_board_BREAK_6_OVERLAY, 0, 160, 120);
    }
    
    if ((global.fun_value >= 63 && global.fun_value <= 64) && subimg == 0)
        draw_sprite(spr_poster_board_mystery_overlay, 0, 160, 120);
    
    draw_set_alpha(1);
}
