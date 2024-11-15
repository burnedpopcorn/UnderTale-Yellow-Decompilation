image_index = irandom_range(0, 2);
image_speed = 0;
fall_speed = irandom_range(3, 6);
y_target = 0;
depth = -room_height;
shadow_id = -4;
rumble_sound = audio_play_sound(snd_rumble, 1, 0);
alarm[0] = 5;
