var box, create_x_dist, wind_direction;

box = 3154;
rand_hmin = box.bbox_top + 25;
rand_hmax = box.bbox_bottom - 5;
create_x_dist = 30;
wind_direction = irandom_range(0, 1);

if (wind_direction == 0)
    create_x = box.bbox_left - create_x_dist;
else
    create_x = box.bbox_right + create_x_dist;

weed_count = 0;
weed_max = 6;
weed_alarm = 25;
destroy_alarm = 10;
no_loop_destroy = false;
alarm[0] = 10;

if (!audio_is_playing(snd_mart_wind))
    audio_play_sound(snd_mart_wind, 20, 1);
