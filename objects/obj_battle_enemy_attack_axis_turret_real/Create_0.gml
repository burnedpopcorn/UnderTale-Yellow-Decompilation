var battle_box;

if (live_call())
    return global.live_result;

battle_box = 3154;
direction = point_direction(x, y, battle_box.x, battle_box.y);
image_angle = direction - 180;
image_alpha = 0;
image_speed = 0;
scene = 0;
cutscene_timer = 0;
shot_number = 5;
can_shoot = false;
