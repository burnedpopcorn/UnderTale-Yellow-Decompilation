if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("goosic a", "goosic b", "void");
direction = 90;
image_alpha = 0;
spin_speed = 0;
slow_down_noloop = false;
scene = 0;
cutscene_timer = 0;
launch_timer = 1 * room_speed;
launch_timer_max = launch_timer;
disc_yoffset = 60;
vsp = 0;
arrow_alpha = 0;
alarm[0] = 2;
alarm[1] = room_speed * 10;
