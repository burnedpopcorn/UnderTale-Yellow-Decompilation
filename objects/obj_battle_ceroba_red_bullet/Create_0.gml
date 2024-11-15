var player_soul, battle_box;

if (live_call())
    return global.live_result;

damage_number = 1;
player_soul = 2979;
battle_box = 3154;
image_alpha = 1;
target_x = battle_box.x + random_range(-2, 2);
target_y = battle_box.y;
turn_rate = 0.3;
destroy_on_contact = true;
speed = 18;
speed_inc = 0.05;
speed_max = 20;
direction = 270;
image_angle = direction;
aim = 20;
image_xscale = 2;
image_yscale = 2;
