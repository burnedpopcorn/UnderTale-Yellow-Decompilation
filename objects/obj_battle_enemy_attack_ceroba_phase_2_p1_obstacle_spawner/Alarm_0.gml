var battle_box, side, xx, xx2, xx3, yy, obstacle1, obstacle2, obstacle3, obstacle_speed;

if (live_call())
    return global.live_result;

battle_box = 3154;
side = choose(1, 2, 3);
xx = battle_box.bbox_left + 16;
xx2 = battle_box.bbox_right - 16;
xx3 = battle_box.x;
yy = battle_box.bbox_top - 16;
obstacle1 = 248;
obstacle2 = 248;
obstacle3 = 248;
obstacle_speed = 5;

switch (side)
{
    case 1:
        obstacle1 = 3120;
        break;
    
    case 2:
        obstacle2 = 3120;
        break;
    
    case 3:
        obstacle3 = 3120;
        break;
}

instance_create_depth(xx, yy, -50, obstacle1);
instance_create_depth(xx2, yy, -50, obstacle2);
instance_create_depth(xx3, yy, -50, obstacle3);

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

with (obstacle3)
{
    direction = 270;
    speed = obstacle_speed;
}

alarm[0] = obstacle_offset;
