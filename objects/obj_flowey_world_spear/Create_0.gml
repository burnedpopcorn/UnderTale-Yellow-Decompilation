target_dir = point_direction(x, y, obj_pl.x, obj_pl.y);
direction = target_dir;
image_angle = direction;
image_alpha = 0;
audio_play_sound(snd_undertale_appear, 1, 0);
scene = 0;
cutscene_timer = 0;
speed_max = 7;
