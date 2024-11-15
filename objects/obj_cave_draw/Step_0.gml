__view_set(e__VW.XView, 0, 0);
__view_set(e__VW.YView, 0, 0);

if (can_scroll == false)
{
    scroll_speed = 0;
    exit;
}

tile_layer_shift(1000000, scroll_speed, 0);
cave_end_x += scroll_speed;

if (!alarm[0])
{
    __view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) + irandom_range(-1, 1));
    __view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + irandom_range(-1, 1));
}

if (alarm[0] > 0)
    obj_aviator_waterfall_overworld_yellow.x += scroll_speed;
