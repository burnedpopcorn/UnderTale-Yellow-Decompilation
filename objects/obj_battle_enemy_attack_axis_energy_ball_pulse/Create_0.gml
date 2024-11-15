var battle_box;

if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("axis", "void", "void");
battle_box = 3154;
image_index = 0;
image_alpha = 0;
direction = point_direction(x, y, battle_box.x, battle_box.y);
move_speed = 9;
move_noloop = false;
audio_play_sound(snd_undertale_swoosh, 1, 0);
