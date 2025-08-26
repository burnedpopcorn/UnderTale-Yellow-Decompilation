if (live_call())
    return global.live_result;

damage_number = 1;
var player_soul = 2980;
var battle_box = obj_dialogue_box_battle_transformation_any;
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
