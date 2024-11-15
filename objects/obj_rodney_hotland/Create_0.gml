event_inherited();

if (global.route == 3)
    instance_destroy();

song = 147;
song_change = false;
play_song = false;
waiter = 0;
image_speed = 0.2;
animate = 1;
talk = 0;
ransong = 0;
bark_song_chance = 8;

if (audio_is_playing(mus_honeydew_bark) || audio_is_playing(mus_honeydew_dalv) || audio_is_playing(mus_honeydew_ruins) || audio_is_playing(mus_honeydew_snow))
    song = obj_radio.bgm;
