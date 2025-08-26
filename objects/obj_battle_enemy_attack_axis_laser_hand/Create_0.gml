var battle_box = obj_dialogue_box_battle_transformation_any;

if (live_call())
    return global.live_result;

image_alpha = 0;
image_speed = 0;
scene = 0;
cutscene_timer = 0;
move_dir = point_direction(battle_box.x, battle_box.y, x, y);
move_dist = point_distance(x, y, battle_box.x, battle_box.y);
move_dir_inc = 0;
move_dir_inc_max = 3;
move_dir_switch_timer = 45;
move_dir_switch_timer_max = move_dir_switch_timer;
move_dir_switch = false;
laser_width = 20;
laser_length = 900;
laser_active = false;
laser_blocked = false;
laser_x1 = 0;
laser_x2 = 0;
laser_y1 = 0;
laser_y2 = 0;
impact_frame_current = 0;
impact_frame_max = 1;
impact_frame_speed = 0.25;
laser_frame_current = 0;
laser_frame_max = 1;
laser_frame_speed = 0.25;
