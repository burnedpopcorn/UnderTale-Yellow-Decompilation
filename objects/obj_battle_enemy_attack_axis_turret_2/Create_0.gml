if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
image_angle = point_direction(x, y, battle_box.x, battle_box.y);
image_alpha = 0;
image_speed = 0;
scene = 0;
side = 0;
cutscene_timer = 0;
shot_number = 3;
target_x = battle_box.x - (x - battle_box.x);
target_y = battle_box.y - (y - battle_box.y);
dir_noloop = false;
destroy_self = false;
