xs = 1;
ys = 1;
sizex = 1;
sizey = 1;
enlarge = 0;
color = c_white;
image_index = 0;
image_speed = 0;
x = __view_get(e__VW.XView, 0) + 160;

if (obj_dialogue.position == 0)
    y = __view_get(e__VW.YView, 0) + 198;
else
    y = __view_get(e__VW.YView, 0) + 45;

draw = false;
alarm[0] = 1;
