scroll_speed = -0.5;

if (global.last_room_overworld == "rm_dunes_22")
    scroll_speed = 0.5;

image_speed = 0.2;
scr_cutscene_start();

with (obj_pl)
    image_alpha = 0;

scene = 0;
timer = 30;
wall_x = 0;

if (global.route != 3)
{
    audio_play_sound(mus_shimmer, 1, 1);
    audio_sound_gain(obj_radio.current_song, 0, 200);
}
