var soul;

if (live_call())
    return global.live_result;

soul = 2979;

if (image_alpha < 1 && fade_in == true)
    image_alpha += 0.2;

if (bbox_right < 0 || bbox_left > room_width || bbox_bottom < 0 || bbox_top > room_height)
    instance_destroy();

x = soul.x + lengthdir_x(len, dir);
y = soul.y + lengthdir_y(len, dir);
