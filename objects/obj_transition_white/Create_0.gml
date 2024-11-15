fadealpha = 0;
newRoom = 0;
fadespeed = 1;
alarm[0] = fadespeed;
yy = 0;
xx = 0;
fadein = false;

if (instance_exists(obj_pl))
{
    x = obj_pl.x;
    y = obj_pl.y;
}
else
{
    x = xx;
}

y = yy;
sw = false;
