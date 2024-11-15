var battle_box, side, xx, xx2, yy, obstacle1, obstacle2, obstacle_speed;

if (live_call())
    return global.live_result;

battle_box = 3154;
side = choose(1, 2);
xx = battle_box.bbox_left + 16;
xx2 = battle_box.bbox_right - 16;
yy = battle_box.bbox_top - 16;
obstacle1 = 3120;
obstacle2 = 248;
obstacle_speed = 5;

if (side == 2)
{
    obstacle1 = 248;
    obstacle2 = 3120;
}

instance_create_depth(xx, yy, -50, obstacle1);
instance_create_depth(xx2, yy, -50, obstacle2);
instance_destroy();

with (obstacle1)
{
    direction = 270;
    speed = obstacle_speed;
}

with (obstacle2)
{
    direction = 270;
    speed = obstacle_speed;
}
