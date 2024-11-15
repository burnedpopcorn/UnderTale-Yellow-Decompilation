if (fade_out == true)
{
    if (image_alpha > 0.01)
        image_alpha = lerp(image_alpha, 0, 0.1);
    else
        image_alpha = 0;
}
else if (image_alpha < 0.99)
{
    image_alpha = lerp(image_alpha, 1, 0.1);
}
else
{
    image_alpha = 1;
}

if (!petals_enabled)
{
    with (obj_petal)
        instance_destroy();
    
    exit;
}

cood_x = irandom_range(-10, room_width + 10);
current_delay++;

if (current_delay == generation_speed)
{
    current_delay = 0;
    instance_create_depth(cood_x, cood_y, choose(999, 999, 0), spawned_object);
}
