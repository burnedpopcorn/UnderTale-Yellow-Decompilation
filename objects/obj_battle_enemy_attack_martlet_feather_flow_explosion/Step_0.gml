if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

x += lengthdir_x(fly_speed, angle);
y += lengthdir_y(fly_speed, angle);
image_angle = angle;

if (fade_out == true)
{
    image_alpha -= 0.1;
    
    if (image_alpha < 0)
        image_alpha = 0;
    
    if (image_alpha == 0)
        instance_destroy();
}
