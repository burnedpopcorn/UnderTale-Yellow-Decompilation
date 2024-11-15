if (instance_exists(spawner))
{
    x = spawner.x + lengthdir_x(move_dist, direction);
    y = spawner.y + lengthdir_y(move_dist, direction);
}

direction += spin_spd;
move_dist += move_spd;

if (fade_out == true)
{
    image_alpha -= 0.25;
    
    if (image_alpha <= 0)
        instance_destroy();
}
