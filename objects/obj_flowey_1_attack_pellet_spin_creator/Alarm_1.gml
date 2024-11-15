var attack_offset, box, side, x_offset, y_offset;

if (live_call())
    return global.live_result;

attack_offset = 42;
box = 3154;
side = choose(1, 2, 3, 4);
x_offset = 0;
y_offset = 0;

switch (side)
{
    case 1:
        x_offset = -160;
        y_offset = 0;
        break;
    
    case 2:
        x_offset = 0;
        y_offset = -160;
        break;
    
    case 3:
        x_offset = 160;
        y_offset = 0;
        break;
    
    case 4:
        x_offset = 0;
        y_offset = 160;
        break;
}

instance_create_depth(box.x + x_offset, box.y + y_offset, -300, obj_flowey_1_attack_pellet_circle_spawner);
alarm[1] = attack_offset;
