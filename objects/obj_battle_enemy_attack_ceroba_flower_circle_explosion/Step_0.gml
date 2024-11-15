if (screenshake == true)
{
    __view_set(e__VW.XView, 0, 0);
    __view_set(e__VW.YView, 0, 0);
    __view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) + choose(-screenshake_max, screenshake_max));
    __view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + choose(-screenshake_max, screenshake_max));
    screenshake_max -= 0.5;
}

if (screenshake_max <= 0 && image_index >= (image_number - 1))
{
    __view_set(e__VW.XView, 0, 0);
    __view_set(e__VW.YView, 0, 0);
    instance_destroy();
}
