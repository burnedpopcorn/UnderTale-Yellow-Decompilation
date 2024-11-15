if (live_call())
    return global.live_result;

if (can_play_sound)
    audio_play_sound(snd_bullet_warning, 1, 0);

if (image_blend != c_red)
    image_blend = c_red;
else
    image_blend = c_white;

if (warning_line_color == 255)
    warning_line_color = 65535;
else
    warning_line_color = 255;
