var lefth, leftl;

if (live_call())
    return global.live_result;

image_alpha = 0;

if (!audio_is_playing(snd_undertale_explosion))
    audio_play_sound(snd_undertale_explosion, 20, 0);

instance_create_depth(x, y - 60, depth + 2, obj_robot_destroy_explosion);
instance_create_depth(x - 2, y - 72, depth, obj_jandroid_tellyvis_destroy_body);
lefth = instance_create_depth(x - 64, y - 60, depth, obj_jandroid_tellyvis_destroy_hand);
lefth.image_xscale = -1;
instance_create_depth(x + 64, y - 60, depth, obj_jandroid_tellyvis_destroy_hand);
leftl = instance_create_depth(x - 24, y - 15, depth, obj_jandroid_tellyvis_destroy_leg);
leftl.image_xscale = -1;
instance_create_depth(x + 23, y - 15, depth, obj_jandroid_tellyvis_destroy_leg);
