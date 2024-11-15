if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
image_alpha = 1;
target_x = obj_heart_battle_fighting_parent.x;
target_y = obj_heart_battle_fighting_parent.y;
turn_rate = 0.06;
destroy_on_contact = true;
speed = 9;
speed_inc = 0.05;
speed_max = 20;
direction = 270;
image_angle = direction;
aim = 12;
