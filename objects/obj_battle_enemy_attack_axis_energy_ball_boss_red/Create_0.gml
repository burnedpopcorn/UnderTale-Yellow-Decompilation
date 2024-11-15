if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("axis", "void", "void");
launch_speed = 10;
image_speed = 0.5;
image_index = 0;
image_alpha = 1;
image_xscale = 0;
image_yscale = 0;
scene = 0;
cutscene_timer = 0;
throw_delay = 1;
is_active = false;
is_deflected = false;
audio_play_sound(snd_undertale_appear, 1, 0);
x_scale_modif = 0;
x_scale_inc = 0.5;
x_scale_modif_size = 0.05;
deflect_noloop = false;
