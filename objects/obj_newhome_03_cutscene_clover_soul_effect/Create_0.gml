var flash;

if (live_call())
    return global.live_result;

image_alpha = 0.75;
image_xscale = 1.5;
image_yscale = 1.5;
flash = audio_play_sound(snd_undertale_flash, 1, 0);
audio_sound_gain(flash, 0.3, 0);
