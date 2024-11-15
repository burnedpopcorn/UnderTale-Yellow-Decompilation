if (!instance_exists(obj_bowll_body_a))
{
    instance_destroy();
    exit;
}

if (obj_bowll_body_a.animating == false)
{
    instance_destroy();
    exit;
}

x += x_speed;
y_speed -= grav;
y += y_speed;
image_xscale += (direc * image_xscale_inc);
image_yscale += image_yscale_inc;

if (fade == true)
{
    imagea_normal -= 0.1;
    
    if (imagea_normal <= 0)
    {
        instance_destroy();
        exit;
    }
}

image_alpha = imagea_normal * global.image_alpha_enemy_attacking;
