if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

if (image_alpha < 1)
{
    image_alpha += image_alpha_inc;
    image_alpha_inc *= 1.1;
}
else
{
    image_alpha = 1;
}
