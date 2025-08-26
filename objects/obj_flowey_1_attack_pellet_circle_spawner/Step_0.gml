if (live_call())
    return global.live_result;

if (!fade_out)
{
    image_alpha += 0.15;
}
else
{
    image_alpha -= 0.15;
    
    if (image_alpha < 0)
        instance_destroy();
}

for (var i = 0; i < pellet_count; i++)
{
    if (instance_exists(pellet[i]))
    {
        pellet[i].direction += pellet_speed;
        pellet[i].x = x + lengthdir_x(pellet_dist, pellet[i].direction);
        pellet[i].y = y + lengthdir_y(pellet_dist, pellet[i].direction);
        pellet[i].image_alpha = other.image_alpha;
    }
}

if (pellet_dist > (pellet_dist_default + 0.1))
    pellet_dist = lerp(pellet_dist, pellet_dist_default, 0.15);
