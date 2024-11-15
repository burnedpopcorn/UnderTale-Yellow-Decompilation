var soul, dir_clamp;

if (live_call())
    return global.live_result;

soul = 2980;
image_index = 1;
direction = point_direction(x, y, soul.x, soul.y);
dir_clamp = 15;

if (image_xscale == 1)
    direction = clamp(direction, 90 + dir_clamp, 180 - dir_clamp);
else
    direction = clamp(direction, dir_clamp, 90 - dir_clamp);

speed = 8;
gravity = 0.25;
