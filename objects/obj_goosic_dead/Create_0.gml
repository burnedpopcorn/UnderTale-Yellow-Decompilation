if (live_call())
    return global.live_result;

image_alpha = 0;

if (!audio_is_playing(snd_undertale_explosion))
    audio_play_sound(snd_undertale_explosion, 20, 0);

instance_create_depth(x, y, depth + 2, obj_robot_destroy_explosion);
instance_create_depth(x - 25, y + 42, depth, obj_goosic_leg_back_destroy);
instance_create_depth(x, y, depth, obj_goosic_body_destroy);
instance_create_depth(x + 16, y + 44, depth, obj_goosic_leg_destroy);
instance_create_depth(x - 39, y + 21, depth, obj_goosic_neck_destroy);
instance_create_depth(x - 52, y + 9, depth, obj_goosic_neck_destroy);
instance_create_depth(x - 57, y - 9, depth, obj_goosic_neck_destroy);
instance_create_depth(x - 57, y - 25, depth, obj_goosic_neck_destroy);
instance_create_depth(x - 48, y - 43, depth, obj_goosic_neck_destroy);
instance_create_depth(x - 48, y - 90, depth, obj_goosic_crown_destroy);
instance_create_depth(x - 33, y - 66, depth, obj_goosic_head_destroy);
instance_create_depth(x + 10, y - 70, depth, obj_goosic_mouth_destroy);
