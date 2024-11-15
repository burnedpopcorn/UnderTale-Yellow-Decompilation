var player_soul, hitbox;

if (live_call())
    return global.live_result;

player_soul = 2979;
hitbox = instance_create_depth(x, y, -100, obj_battle_ceroba_special_attack_red_bullet_hitbox);
hitbox.spawner = id;
image_alpha = 1;
target_x = player_soul.x + random_range(-2, 2);
target_y = player_soul.y;
turn_rate = 0.3;
destroy_on_contact = true;
speed = 20;
speed_inc = 0.05;
speed_max = 20;
direction = 270;
image_angle = direction;
aim = 20;
image_xscale = 2;
image_yscale = 2;
visible = false;
