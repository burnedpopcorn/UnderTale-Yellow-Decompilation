if (live_call())
    return global.live_result;

if (image_alpha < 1)
{
    image_alpha += 0.2;
    alarm[0] = 2;
}
else
{
    scene = 1;
}
