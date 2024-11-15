__view_set(e__VW.XView, 0, xview_orig);
__view_set(e__VW.YView, 0, yview_orig);
__view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) + irandom_range(-2, 2));
__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + irandom_range(-2, 2));

if (shake == true)
    alarm[1] = 1;
