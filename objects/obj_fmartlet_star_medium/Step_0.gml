if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        reset_timer--;
        
        if (reset_timer <= 0)
            scene++;
        
        break;
    
    case 1:
        speed = lerp(speed, target_speed, 0.07);
        target_dir = point_direction(x, y, heart.x, heart.y);
        direction += (angle_difference(target_dir, direction) * 0.1);
        break;
}

if (scr_enemy_attack_bullet_hit() && speed > speed_min)
{
    speed -= speed_dec;
    
    with (obj_fmartlet_star_medium)
        collider_id_last = other.collider_id_last;
}

if (bullet_destroy_self)
{
    var spawn_count = 3;
    
    for (var i = 0; i < spawn_count; i++)
    {
        var star = instance_create_depth(x + random_range(-10, 10), y + random_range(-10, 10), depth, obj_fmartlet_star_small);
        star.direction = (direction - 180) + (45 * i);
        star.speed = star.target_speed;
    }
    
    instance_create_depth(x, y, depth - 1, obj_fmartlet_star_destroy);
    obj_fmartlet_star_destroy.sprite_index = destroy_sprite;
    instance_destroy();
}

target_dir = point_direction(x, y, heart.x, heart.y);
direction += (angle_difference(target_dir, direction) * 0.1);
