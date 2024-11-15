x -= 3;

if (x < (__view_get(e__VW.XView, 0) - 40))
    instance_destroy();

if (y < ystart)
{
    vsp += grav;
}
else
{
    y = ystart;
    vsp = 0;
}

if (y == ystart && irandom_range(0, 10) == 1)
    vsp = irandom_range(-2, -1);

y += vsp;
image_angle += 15;
