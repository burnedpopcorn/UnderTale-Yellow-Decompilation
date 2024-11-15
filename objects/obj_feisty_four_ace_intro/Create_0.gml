image_speed = 0.36666666666666664;
image_index = 0;
index_trigger_obj = 3;
trigger_obj = false;
index_trigger_bg = 7;
trigger_bg = false;

if (instance_exists(obj_background_feisty_four_yellow))
    depth = obj_background_feisty_four_yellow.depth - 10;

audio_play_sound(snd_feisty_ace_entrance, 1, 0);
