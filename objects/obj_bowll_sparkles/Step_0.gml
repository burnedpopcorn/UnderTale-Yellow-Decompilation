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

image_alpha = global.image_alpha_enemy_attacking;