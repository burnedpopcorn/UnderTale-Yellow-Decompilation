var dist_temp;

y += (move_speed * dir);

if (fade_state == 0)
{
    image_alpha += fade_speed;
    
    if (image_alpha >= 1)
    {
        image_alpha = 1;
        fade_state = 1;
        center_dist = box.y - y;
    }
}

if (fade_state == 2)
{
    image_alpha -= fade_speed;
    
    if (image_alpha <= 0)
        instance_destroy();
}

if (fade_state == 1)
{
    dist_temp = box.y - y;
    
    if (abs(dist_temp) >= abs(center_dist) && (sign(dist_temp) != sign(center_dist) || sign(center_dist) == 0))
        fade_state = 2;
}
