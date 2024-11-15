if (fade_direction == "out")
{
    image_alpha += fade_speed;
    
    if (image_alpha == 1)
        fade_direction = "none";
}

if (fade_direction == "in")
{
    image_alpha -= fade_speed;
    
    if (image_alpha == 0)
        fade_direction = "none";
}
