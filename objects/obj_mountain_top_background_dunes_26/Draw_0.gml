var i, mountain_offset;

i = 0;

while (i <= room_width)
{
    draw_background(2502, (__view_get(e__VW.XView, 0) + i) / 1.05, 109);
    i += background_get_width(2502);
}

draw_background(2503, (__view_get(e__VW.XView, 0) + 180) / 1.05, 106);
mountain_offset = -400;
i = mountain_offset;

while (i <= room_width)
{
    draw_background(2504, (__view_get(e__VW.XView, 0) / 1.3) + i, 100);
    i += background_get_width(2504);
}

i = 0;

while (i <= room_width)
{
    draw_background(2507, (__view_get(e__VW.XView, 0) / 1.07) + i, 102);
    i += background_get_width(2507);
}

i = 0;

while (i <= room_width)
{
    draw_background(2506, (__view_get(e__VW.XView, 0) / 1.1) + i, 92);
    i += background_get_width(2506);
}

i = 0;

while (i <= room_width)
{
    draw_sprite(spr_mountain_bg_layer7, -1, (__view_get(e__VW.XView, 0) / 1.1) + i, 42);
    i += sprite_get_width(spr_mountain_bg_layer7);
}

i = 0;

while (i <= room_width)
{
    draw_background(2508, (__view_get(e__VW.XView, 0) / 1.15) + i, 40);
    i += sprite_get_width(mountain_bg_layer8);
}
