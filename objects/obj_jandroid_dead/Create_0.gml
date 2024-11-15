if (live_call())
    return global.live_result;

image_alpha = 0;

if (!audio_is_playing(snd_undertale_explosion))
    audio_play_sound(snd_undertale_explosion, 20, 0);

instance_create_depth(x, y - 60, depth + 2, obj_robot_destroy_explosion);
instance_create_depth(x, y, depth, obj_jandroid_body_bottom_destroy);
instance_create_depth(x - 10, y - 43, depth, obj_jandroid_body_top_destroy);
instance_create_depth(x + 67, y - 47, depth, obj_jandroid_broom_destroy);
instance_create_depth(x - 6, y - 95, depth, obj_jandroid_headphones_destroy);
instance_create_depth(x + 2, y - 62, depth, obj_jandroid_head_destroy);
instance_create_depth(x + 62, y - 86, depth, obj_jandroid_hand_destroy);
instance_create_depth(x + 58, y - 39, depth, obj_jandroid_hand_destroy);
