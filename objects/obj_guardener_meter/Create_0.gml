if (live_call())
    return global.live_result;

cood_offset = [18, 28];
curr_fill = 6;
prev_fill = curr_fill;
color_fill = prev_fill;
is_hidden = false;
a = 3.7;
b = 3.1;
anim_curve = 0;
anim_timer = 0.3737;
spd = 0.06;
sound_noloop = false;
u_nb_rect = shader_get_uniform(sh_meter, "nb_rect");
u_time = shader_get_uniform(sh_meter, "time");
audio_play_sound(snd_undertale_appear, 1, 0);
