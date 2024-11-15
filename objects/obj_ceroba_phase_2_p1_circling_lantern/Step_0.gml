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
x = attack_target_x + lengthdir_x(attack_distance, attack_dir);
y = attack_target_y + lengthdir_y(attack_distance, attack_dir);

if (image_alpha < 1 && can_move == false)
{
    image_alpha += 0.2;
    
    if (image_alpha > 1)
        image_alpha = 1;
}

if (attack_dir < 360)
    attack_dir += bullet_speed;
else
    attack_dir = bullet_speed;
