if (live_call())
    return global.live_result;

if (active == false)
{
    image_alpha = obj_flowey_battle_gray_wheel.image_alpha;
    image_xscale = obj_flowey_battle_gray_wheel.image_xscale;
    image_yscale = image_xscale;
    depth = obj_flowey_battle_gray_wheel.depth + 1;
    
    switch (image_index)
    {
        case 0:
            dist = 100;
            dir = 235;
            break;
        
        case 1:
            dist = 100;
            dir = 305;
            break;
        
        case 2:
            dist = 110;
            dir = 0;
            break;
        
        case 3:
            dist = 105;
            dir = 57;
            break;
        
        case 4:
            dist = 100;
            dir = 123;
            break;
        
        case 5:
            dist = 110;
            dir = 180;
            break;
    }
}
else
{
    dir += 10;
    dist += 20;
    image_alpha -= 0.1;
    
    if (image_alpha <= 0)
        instance_destroy();
}

x = obj_flowey_battle_gray_wheel.x + lengthdir_x(dist * image_xscale, dir);
y = obj_flowey_battle_gray_wheel.y + lengthdir_y(dist * image_xscale, dir);
