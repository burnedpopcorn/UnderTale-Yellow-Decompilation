image_alpha = 0;
image_speed = 0.5;
waiter = 0;

if (global.flag[15] == 1)
{
    global.cutscene = true;
    obj_pl.x = x;
    obj_pl.direction = 90;
}

y1 = y - 3;
y2 = y + 3;
vspeed = 0.2;
animate = true;
