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
        speed = lerp(speed, target_speed, 0.09);
        target_dir = point_direction(x, y, heart.x, heart.y);
        direction += (angle_difference(target_dir, direction) * 0.25);
        
        if (point_in_rectangle(x, y, battle_box.bbox_left - 10, battle_box.bbox_top - 10, battle_box.bbox_right + 10, battle_box.bbox_bottom + 10))
            scene++;
        
        break;
    
    case 2:
        speed = lerp(speed, target_speed, 0.09);
        break;
}

if (scr_enemy_attack_bullet_hit() && speed > speed_min)
{
    if (scene > 0)
        speed -= speed_dec;
}

if (bullet_destroy_self)
{
    instance_create_depth(x, y, depth - 1, obj_fmartlet_star_destroy);
    obj_fmartlet_star_destroy.sprite_index = destroy_sprite;
    instance_destroy();
}
