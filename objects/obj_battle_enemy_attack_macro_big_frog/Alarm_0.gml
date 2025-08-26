if (live_call())
    return global.live_result;

var soul = obj_heart_battle_fighting_red;
image_index = 1;
direction = point_direction(x, y, soul.x, soul.y);
var dir_clamp = 15;

if (image_xscale == 1)
    direction = clamp(direction, 90 + dir_clamp, 180 - dir_clamp);
else
    direction = clamp(direction, dir_clamp, 90 - dir_clamp);

speed = 8;
gravity = 0.25;
