if (instance_exists(obj_overworld_shop_fade_out_screen) || room == rm_shop)
    exit;

audio_sound_gain(mus_honeydew_lodge, 1, 1);
scr_audio_fade_out(mus_honeydew_lodge, 100);
scr_audio_fade_out(song, 100);
