if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
direction = point_direction(x, y, battle_box.x, battle_box.y);
image_angle = direction - 180;
image_alpha = 0;
image_speed = 0;
image_angle_speed = 0;
scene = 0;
cutscene_timer = 0;
destroy_self = false;
