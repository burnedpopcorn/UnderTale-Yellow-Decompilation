if (live_call())
    return global.live_result;

if (!instance_exists(obj_flowey_battle_gray_wheel))
{
    instance_destroy();
    exit;
}

image_angle = direction - 90 - 180;

if (self_destroy == true)
{
    image_alpha -= 0.1;
    
    if (image_alpha <= 0)
        instance_destroy();
    
    exit;
}

x = obj_flowey_battle_gray_wheel.x + lengthdir_x(distance, direction);
y = obj_flowey_battle_gray_wheel.y + lengthdir_y(distance, direction);

if (!grow_noloop)
{
    image_xscale += 0.1;
    image_yscale = image_xscale;
    
    if (image_xscale >= 1.2)
    {
        image_xscale = 1.2;
        image_yscale = 1.2;
        grow_noloop = true;
    }
}
else
{
    image_xscale = lerp(image_xscale, 1, 0.2);
    image_yscale = image_xscale;
}

distance = 75 * image_xscale;
