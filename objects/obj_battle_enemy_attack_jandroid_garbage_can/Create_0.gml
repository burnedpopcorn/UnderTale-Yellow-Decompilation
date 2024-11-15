if (live_call())
    return global.live_result;

image_alpha = 0;
image_xscale = 2;
image_yscale = 2;
scene = 0;
cutscene_timer = 0;
start_delay = 0;
garbage_count = 5;
garbage_current = 1;
spawn_timer = 9;
spawn_timer_max = 9;
spawn_offset_x = 0;
spawn_offset_x_max = 70;
spawn_number = 3;
spawn_number_current = 0;
spawn_number_current_dir = 1;
spawn_offset_x_inc = spawn_offset_x_max / spawn_number;
pseudo_random = obj_battle_enemy_attack_jandroid_garbage_cans_generator.attack_timer * 0.7;
green_spawn_noloop = false;
disc_count = -1;

if (x > 320)
    image_angle = 360;
