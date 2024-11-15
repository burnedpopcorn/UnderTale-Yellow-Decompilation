if (!instance_exists(obj_target_bar_battle))
{
    image_alpha -= 0.2;
    image_xscale -= 0.1;
}

if (image_alpha <= 0)
    instance_destroy();
