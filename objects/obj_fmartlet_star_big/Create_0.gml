if (live_call())
    return global.live_result;

battle_box = 3154;
heart = obj_heart_battle_fighting_parent;
scene = 0;
image_alpha = 0;
image_xscale = 0;
image_yscale = 0;
image_angle = 359;
bullet_hit_points = 3;
bullet_hit_draw_timer = 0;
bullet_destroy_self = false;
target_speed = 2;
speed_dec = target_speed + 1;
speed_min = -target_speed * 2.5;
target_dir = point_direction(x, y, battle_box.x, battle_box.y);
direction = target_dir;
destroy_sprite = spr_martlet_star_explosion_medium;
