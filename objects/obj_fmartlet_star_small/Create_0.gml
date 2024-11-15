if (live_call())
    return global.live_result;

event_inherited();
image_alpha = 1;
image_xscale = 1;
image_yscale = 1;
image_angle = 0;
scene = 0;
target_speed = 7;
speed_dec = target_speed + 1;
speed_min = -target_speed * 2;
reset_timer = 25;
bullet_hit_points = 1;
destroy_sprite = spr_martlet_star_explosion_small;
