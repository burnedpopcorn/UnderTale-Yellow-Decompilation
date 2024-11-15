__view_set(e__VW.XView, 0, 0);
__view_set(e__VW.YView, 0, 0);

if (scr_timer())
    instance_destroy();

__view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) + irandom_range(-8, 8));
__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + irandom_range(-8, 8));
