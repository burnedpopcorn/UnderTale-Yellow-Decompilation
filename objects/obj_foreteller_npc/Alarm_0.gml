var screenshake;

sprite_index = spr_fortune_teller_open;
audio_play_sound(snd_mirrorbreak, 1, 0);
screenshake = instance_create(0, 0, obj_screenshake);
screenshake.timer = 15;
screenshake.intensity = 1;
alarm[1] = 75;
