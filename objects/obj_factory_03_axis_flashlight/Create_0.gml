if (live_call())
    return global.live_result;

image_speed = 0;
active = false;
lighting_surface = -1;
delay_current = 15;
delay_max = 15;
caught_noloop = false;
draw_alpha = 0;
fade_out = false;
flashlight_emitter = audio_emitter_create();
audio_listener_orientation(0, 0, 1000, 0, -1, 0);
audio_emitter_position(flashlight_emitter, x, y, 0);
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_falloff(flashlight_emitter, 100, 300, 1);
