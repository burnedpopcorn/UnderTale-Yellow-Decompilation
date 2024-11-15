var i, bullet;

if (live_call())
    return global.live_result;

if (instance_exists(obj_ceroba_attack_bullet_spawner_spawner) && obj_ceroba_attack_bullet_spawner_spawner.attack_stop == true)
    fade_out = true;

if (!fade_out)
{
    if (image_alpha < 1)
    {
        image_alpha += 0.1;
        
        if (global.hotland_flag[2] >= 2)
            image_alpha += 0.1;
    }
    else
    {
        hspeed = lerp(hspeed, hspeed_target, 0.15);
        
        if ((hspeed < 0 && x <= x_target) || (hspeed > 0 && x >= x_target))
            fade_out = true;
        
        if (!alarm[0])
            alarm[0] = 10;
    }
}
else if (image_alpha > 0)
{
    for (i = 0; i < ds_list_size(fireball_list); i++)
    {
        bullet = ds_list_find_value(fireball_list, i);
        bullet.image_alpha = image_alpha;
    }
    
    image_alpha -= 0.1;
}
else
{
    instance_destroy();
}

for (i = 0; i < ds_list_size(fireball_list); i++)
{
    bullet = ds_list_find_value(fireball_list, i);
    bullet.x += hspeed;
}

scr_enemy_attack_bullet_hit();

if (bullet_destroy_self)
{
    instance_destroy();
    instance_create_depth(x, y, depth, obj_ceroba_attack_fire_mask_destroy_large);
}

image_xscale = lerp(image_xscale, 1, 0.15);
image_yscale = image_xscale;
