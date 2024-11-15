if (__view_get(e__VW.XView, 0) < (x - 10) && hspeed == 0)
{
    if (!alarm[0])
        alarm[0] = 10;
}
else if (alarm[0] > -1 && hspeed == 0)
{
    alarm[0] = -1;
}

if (x < 0)
    instance_destroy();
