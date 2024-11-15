if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("axis", "void", "void");
image_alpha = 0;
audio_play_sound(snd_undertale_appear, 1, 0);
noloop = false;
destroy_check = false;
destroy_timer = 3;
dir_start = -1;
dir_switch = false;
speed_max = 6;
