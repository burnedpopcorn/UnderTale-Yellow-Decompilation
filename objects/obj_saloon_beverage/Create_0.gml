var audio_slide_in, audio_length;

audio_slide_in = audio_play_sound(snd_slide_whistle, 1, 0);
audio_length = audio_sound_length(audio_slide_in);
bottle_y_target = 215;
bottle_y_distance = y - bottle_y_target;
bottle_slide_time = audio_length * 30;
bottle_y_speed_avg = bottle_y_distance / bottle_slide_time;
bottle_y_speed_current = bottle_y_speed_avg * 2;
bottle_y_speed_decr = bottle_y_speed_avg / (bottle_slide_time / 2);
