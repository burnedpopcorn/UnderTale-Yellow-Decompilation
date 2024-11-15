if (alpha >= 0 && disappear == true)
    alpha -= 0.05;

if (alarm[0] < 0.5)
{
    hspeed = random_range(-1, 1);
    vspeed = -2;
    disappear = true;
}

if (alpha <= 0)
    instance_destroy();
