var battle_box, heart;

if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("axis", "void", "void");
battle_box = 3154;
heart = obj_heart_battle_fighting_parent;
image_index = 0;
image_alpha = 0;
image_speed_base = 3;
image_speed = image_speed_base;
direction = point_direction(x, y, heart.x, heart.y);
move_speed = 11;
move_noloop = true;
hold_timer = 5;
warn_timer = 15;
warn_flash = false;
audio_play_sound(snd_undertale_swoosh, 1, 0);
