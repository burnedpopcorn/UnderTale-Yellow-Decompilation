var box;

damage_number = scr_determine_damage_number_enemy("starlo", "void", "void");
starlo_train_speed = 8;
alarm[0] = 500 / starlo_train_speed;
box = 3154;

if (y < box.bbox_top)
    direction = 270;
else if (y > box.bbox_bottom)
    direction = 90;
else if (x > box.bbox_right)
    direction = 180;

image_angle = direction;
speed = starlo_train_speed;
audio_play_sound(snd_starlo_train_incoming, 1, 0);
