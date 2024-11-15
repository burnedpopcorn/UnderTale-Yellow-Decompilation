if (image_alpha < 1)
{
    image_alpha += 0.2;
    exit;
}

vspeed -= vspeed_inc;

if (vspeed < -vspeed_max)
    vspeed = -vspeed_max;
