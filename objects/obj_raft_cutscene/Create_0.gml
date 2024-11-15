bg_scroll_speed = -0.5;
pillar_scroll_speed = -1.5;
scroll_speed = -1;
scr_cutscene_start();

with (obj_pl)
    image_alpha = 0;

scene = 0;
timer = 30;
CAVE_TRANSITION = false;
HOTLAND_TRANSITION = false;
LAVA_TRANSITION = false;
transition_x = 320;
sprite_ava_death = spr_ava_breaks;
audio_play_sound(mus_ambient_river, 1, 1);
audio_play_sound(snd_rapids, 1, 1);
audio_sound_gain(snd_rapids, 0.6, 0);
