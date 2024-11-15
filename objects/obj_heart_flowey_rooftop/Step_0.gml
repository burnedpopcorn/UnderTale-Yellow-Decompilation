if (waiter == 0)
{
    y = ystart + (sin(degtorad(sin_number)) * 7);
    sin_number += 3;
    
    if (sin_number > 359)
        sin_number = 0;
}
else
{
    y = lerp(y, ystart, 0.1);
}
