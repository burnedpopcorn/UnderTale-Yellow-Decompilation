__view_set(e__VW.XView, 0, x_orig);
__view_set(e__VW.YView, 0, y_orig);

if (scr_timer())
{
    __view_set(e__VW.Object, 0, view_object_original);
    instance_destroy();
}

__view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) + irandom_range(-intensity, intensity));
__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + irandom_range(-intensity, intensity));
