if (live_call())
    return global.live_result;

if (!fade_out)
{
    if (image_alpha < 1)
        image_alpha += 0.1;
    else if (!alarm[0])
        alarm[0] = 30;
}
else if (image_alpha > 0)
{
    image_alpha -= 0.1;
}
else
{
    instance_destroy();
}

scr_enemy_attack_bullet_hit();

if (bullet_destroy_self)
{
    instance_destroy();
    instance_create_depth(x, y, depth, obj_ceroba_attack_fire_mask_destroy_large);
}

image_xscale = lerp(image_xscale, 1, 0.15);
image_yscale = image_xscale;
