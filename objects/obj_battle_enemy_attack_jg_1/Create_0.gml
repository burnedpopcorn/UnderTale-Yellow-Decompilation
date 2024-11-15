var box, bucket_spawn;

if (live_call())
    return global.live_result;

box = 3154;
speaker_right = instance_create_depth(box.bbox_right + 80, box.bbox_bottom - 6, obj_heart_battle_fighting_red.depth - 1, obj_battle_enemy_attack_goosic_speaker);
speaker_left = instance_create_depth(box.bbox_left - 80, box.bbox_bottom - 6, obj_heart_battle_fighting_red.depth - 1, obj_battle_enemy_attack_goosic_speaker);
speaker_left.image_xscale = -1;
audio_pos_x = 0;
audio_pos_x_current = 0;
audio_pos = "middle";
spawn_notes = false;
spawn_interval = 2;
spawn_interval_max = spawn_interval;
spawn_offset_x = 0;
spawn_offset_x_max = 40;
spawn_offset_x_inc = 20;
spawn_offset_dir = 1;
depth = 0;
scr_enable_battle_box_surface();
alarm[0] = 15;
attack_duration = 15;
alarm[2] = room_speed * 9;
bucket_spawn = instance_create_depth(0, 0, -100, obj_battle_enemy_attack_jandroid_slippery_floor_generator);
bucket_spawn.attack_interval = 60;
bucket_spawn.alarm[2] = 0;
