if (live_call())
    return global.live_result;

surf = surface_create(640, 480);
attack_delay = 0;
image_xscale = 10;
image_yscale = 10;
image_alpha = 0;
image_speed = 0;
var ring_sound = audio_play_sound(snd_ceroba_bullet_rise, 1, 0);
audio_sound_pitch(ring_sound, 1.2);
