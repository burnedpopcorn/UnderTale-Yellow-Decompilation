if (live_call())
    return global.live_result;

image_alpha = 0;

if (!audio_is_playing(snd_undertale_explosion))
    audio_play_sound(snd_undertale_explosion, 20, 0);

instance_create_depth(x, y - 60, depth + 2, obj_robot_destroy_explosion);
instance_create_depth(x, y + 27, depth, obj_sousborg_body_bottom_destroy);
instance_create_depth(x, y - 24, depth, obj_sousborg_body_top_destroy);
instance_create_depth(x - 54, y - 23.5, depth, obj_sousborg_left_arm_1_destroy);
instance_create_depth(x - 98, y - 61.5, depth, obj_sousborg_left_arm_2_destroy);
instance_create_depth(x - 106, y - 66, depth, obj_sousborg_hand_destroy);
instance_create_depth(x - 114, y - 67, depth, obj_sousborg_cleaver_destroy);

with (instance_create_depth(x + 59, y - 20.5, depth, obj_sousborg_left_arm_1_destroy))
    image_xscale = -1;

with (instance_create_depth(x + 105, y - 64, depth, obj_sousborg_left_arm_2_destroy))
    image_xscale = -1;

with (instance_create_depth(x + 109, y - 78, depth, obj_sousborg_hand_destroy))
    image_xscale = -1;

instance_create_depth(x + 109, y - 144.5, depth, obj_sousborg_glass_destroy);
instance_create_depth(x + 147, y - 112, depth, obj_sousborg_salt_destroy);
instance_create_depth(x + 147, y - 112, depth, obj_sousborg_salt_destroy);

for (var i = 0; i < 4; i++)
    instance_create_depth(x + irandom_range(64, 144), y - irandom_range(111, 150), depth - 1, obj_sousborg_shard_destroy);

instance_create_depth(x + 107, y - 72.5, depth, obj_sousborg_plate_2_destroy);
instance_create_depth(x, y - 64, depth, obj_sousborg_head_destroy);
instance_create_depth(x - 1, y - 131, depth, obj_sousborg_hat_destroy);
instance_create_depth(x + 73, y - 133, depth, obj_sousborg_spoon_destroy);
