if (live_call())
    return global.live_result;

if (other.is_dashing)
    exit;

instance_create_depth(battle_box.x, battle_box.y, -100, obj_fmartlet_star_explosion_hurt);
instance_create_depth(x, y, depth - 1, obj_fmartlet_star_destroy);
obj_fmartlet_star_destroy.sprite_index = destroy_sprite;
instance_destroy();
