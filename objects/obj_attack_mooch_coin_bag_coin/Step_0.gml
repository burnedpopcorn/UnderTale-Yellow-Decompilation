if (image_alpha < 1)
{
    image_alpha = lerp(image_alpha, 1, 0.1);
    
    if (image_alpha >= 0.99)
        image_alpha = 1;
}

if (speed > 0)
{
    speed -= speed_dec;
}
else
{
    speed = 0;
    x = round(x);
    y = round(y);
}
