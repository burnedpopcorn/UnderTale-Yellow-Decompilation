if (live_call())
    return global.live_result;

scr_enemy_attack_bullet_hit();

if (image_alpha < 1)
    image_alpha += 0.1;

if (bullet_destroy_self == true)
{
    instance_create_depth(x, y, depth, obj_ceroba_attack_ribbon_base_destroy);
    instance_destroy();
    
    with (obj_verlet_rope_generator)
        points[0][4] = false;
}
