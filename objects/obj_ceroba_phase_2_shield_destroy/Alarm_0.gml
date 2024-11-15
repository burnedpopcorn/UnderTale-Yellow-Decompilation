if (can_shake == true)
{
    x = xstart + irandom_range(-1, 1);
    y = ystart + irandom_range(-1, 1);
    alarm[0] = shake_timer;
}
else
{
    x = xstart;
    y = ystart;
}
