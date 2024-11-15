if (live_call())
    return global.live_result;

event_inherited();
image_alpha = 1;
image_xscale = 1;
image_yscale = 1;
image_angle = 0;
scene = 0;
target_speed = 3;
speed_dec = target_speed + 1;
speed_min = -target_speed * 2.5;
reset_timer = 15;
bullet_hit_points = 2;
destroy_sprite = spr_martlet_star_explosion_medium;
