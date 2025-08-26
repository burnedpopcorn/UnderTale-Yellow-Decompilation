depth = -room_height;
image_speed = 0;
image_index = 0;
default_x = x;
default_y = y;
disjoint_x = 0;
disjoint_y = 0;
can_talk_no_loop = false;
full_sprite = 3325;

if (global.sworks_flag[26] >= 2)
    full_sprite = 131;

if (global.geno_complete[3])
    full_sprite = 2663;
