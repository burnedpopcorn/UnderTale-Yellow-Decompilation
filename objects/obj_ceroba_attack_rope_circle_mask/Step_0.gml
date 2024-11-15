if (live_call())
    return global.live_result;

scr_enemy_attack_bullet_hit();

if (bullet_destroy_self)
{
    instance_destroy();
    instance_create_depth(x, y, depth, obj_ceroba_attack_fire_mask_destroy);
    
    with (obj_rope_circle_part)
        bullet_destroy_self = true;
}
