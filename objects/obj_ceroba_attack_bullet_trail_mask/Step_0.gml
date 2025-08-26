if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
scr_enemy_attack_bullet_hit();

if (bullet_destroy_self)
{
    instance_destroy();
    instance_create_depth(x, y, depth, obj_ceroba_attack_fire_mask_destroy);
}

switch (scene)
{
    case 0:
        image_alpha += 0.1;
        
        if (image_alpha >= 1)
            scene++;
        
        break;
    
    case 1:
        if (speed < target_speed)
            speed += 1;
        
        var target_distance = battle_box.sprite_height;
        
        if (direction == 0 || direction == 180)
            target_distance = battle_box.sprite_width;
        
        dist_travelled += speed;
        
        if (dist_travelled >= (target_distance / bullet_count))
        {
            dist_travelled = 0;
            var fireball = instance_create_depth(x, y, depth + 1, obj_ceroba_attack_bullet_trail_fireball);
            fireball.alarm[0] = 30;
        }
        
        if (point_distance(xstart, ystart, x, y) >= target_distance)
            scene++;
        
        break;
    
    case 2:
        image_alpha -= 0.2;
        
        if (image_alpha <= 0)
            instance_destroy();
        
        break;
}
