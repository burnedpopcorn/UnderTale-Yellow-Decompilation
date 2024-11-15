var yy, i, mountain_offset;

yy = (__view_get(e__VW.YView, 0) / 1.2) - 100;
i = 0;

while (i <= room_width)
{
    draw_background(2509, __view_get(e__VW.XView, 0) + i, yy);
    i += background_get_width(2509);
}

i = -200;

while (i <= room_width)
{
    draw_background(2510, (__view_get(e__VW.XView, 0) + i) / 1.05, 120 + yy);
    i += background_get_width(2510);
}

mountain_offset = -200;
i = mountain_offset;

while (i <= room_width)
{
    draw_background(2504, (__view_get(e__VW.XView, 0) / 1.3) + i, 150 + yy);
    i += background_get_width(2504);
}

i = 0;

while (i <= room_width)
{
    draw_background(2511, (__view_get(e__VW.XView, 0) / 1.07) + i, 118 + yy);
    i += background_get_width(2511);
}

i = 0;

while (i <= room_width)
{
    draw_background(2513, (__view_get(e__VW.XView, 0) / 1.1) + i, 114 + yy);
    i += background_get_width(2513);
}

i = 0;

while (i <= room_width)
{
    draw_sprite(spr_mountain_bg_layer7, -1, (__view_get(e__VW.XView, 0) / 1.1) + i, 68 + yy);
    i += sprite_get_width(spr_mountain_bg_layer7);
}
