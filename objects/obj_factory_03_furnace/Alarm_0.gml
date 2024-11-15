sprite_index = spr_factory_03_furnace_offon;
image_index = image_number - 1;
image_speed = -1;
state = 2;

with (child_light)
    destroy_self = true;

child_light = -4;
audio_play_sound(snd_fire_snuff_out, 1, 0);
audio_stop_sound(fire_loop);
