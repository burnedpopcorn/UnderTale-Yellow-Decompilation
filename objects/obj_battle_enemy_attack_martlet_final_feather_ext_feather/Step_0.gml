if (live_call())
    return global.live_result;

scr_enemy_attack_bullet_hit();

if (bullet_destroy_self)
{
    image_alpha -= 0.1;
    
    if (image_alpha <= 0)
        instance_destroy();
}

image_angle = direction;
