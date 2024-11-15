alarm[1] = 165;
audio_stop_sound(obj_radio.current_song);
audio_sound_gain(obj_radio.current_song, 1, 1);
obj_radio.bgm = 164;
global.radio_restart = true;
timer[0] = 60;
scr_text();

with (msg)
{
    sndfnt = 99;
    skippable = false;
    portrait = false;
    position = 0;
    message[0] = "* What's this?";
    message[1] = "* A new customer?";
}
