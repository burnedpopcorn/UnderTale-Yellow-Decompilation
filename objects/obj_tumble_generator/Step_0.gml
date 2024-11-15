if (!instance_exists(obj_starlo_boss_body))
    exit;

if (timer == 0)
{
    timer = room_speed * 5;
    
    switch (irandom_range(1, 3))
    {
        case 1:
            instance_create_depth(660, random_range(210, 230), obj_starlo_boss_body.depth - 1, obj_tumble_large);
            break;
        
        case 2:
            instance_create_depth(660, random_range(180, 210), depth + 2, obj_tumble_medium);
            break;
        
        default:
            instance_create_depth(660, random_range(160, 190), depth + 3, obj_tumble_small);
    }
}

timer--;
