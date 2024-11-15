depth = -room_height;
image_speed = 0;
image_index = 0;
default_x = x;
default_y = y;
disjoint_x = 0;
disjoint_y = 0;
can_talk_no_loop = false;
full_sprite = spr_steamworks_vendy_face_base;

if (global.sworks_flag[26] >= 2)
    full_sprite = spr_steamworks_vendy_face_happy;

if (global.geno_complete[3])
    full_sprite = spr_steamworks_vendy_face_sweaty;
