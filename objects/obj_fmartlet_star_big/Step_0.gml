if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        image_alpha += 0.05;
        image_xscale = image_alpha;
        image_yscale = image_alpha;
        image_angle = 359 - (359 * image_alpha);
        
        if (image_alpha >= 1)
        {
            image_alpha = 1;
            scene++;
        }
        
        image_xscale = image_alpha;
        image_yscale = image_alpha;
        image_angle = 359 - (359 * image_alpha);
        break;
    
    case 1:
        speed = lerp(speed, target_speed, 0.05);
        target_dir = point_direction(x, y, heart.x, heart.y);
        direction += (angle_difference(target_dir, direction) * 0.15);
        break;
}

if (scene > 0)
{
    speed_dec = target_speed + 1;
    
    if (scr_enemy_attack_bullet_hit() && speed > speed_min)
        speed -= speed_dec;
    
    if (bullet_destroy_self)
    {
        var spawn_count = 2;
        
        for (var i = 0; i < spawn_count; i++)
        {
            var star = instance_create_depth(x + random_range(-10, 10), y + random_range(-10, 10), depth, obj_fmartlet_star_medium);
            star.direction = (direction - 180) + (45 * i);
            star.speed = star.target_speed * 0.5;
        }
        
        instance_create_depth(x, y, depth - 1, obj_fmartlet_star_destroy);
        obj_fmartlet_star_destroy.sprite_index = destroy_sprite;
        instance_destroy();
    }
}

x = clamp(x, 0, 640);
