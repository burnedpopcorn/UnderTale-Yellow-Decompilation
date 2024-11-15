var world_value;

enc_disabled = false;
enc_found = false;
enc_rate = 1;
enc_time = irandom_range(5, 15) * room_speed;

if (instance_exists(obj_martlet_follower))
    instance_destroy();

world_value = scr_determine_world_value_yellow();

if (global.sworks_flag[0] > 0 && world_value != 4)
    instance_destroy();
