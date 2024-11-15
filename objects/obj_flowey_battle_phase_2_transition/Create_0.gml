if (live_call())
    return global.live_result;

glitch_sound = audio_play_sound(mus_f_laugh, 1, 1);
audio_sound_pitch(glitch_sound, random_range(0.9, 1.1));
alarm[0] = 5;
alarm[1] = 10;
screenshake_power = 0;
white_overlay_alpha = 0;
draw_glitches = false;
fade_out = false;
