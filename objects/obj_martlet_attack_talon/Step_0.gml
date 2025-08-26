if (live_call())
    return global.live_result;

if (spawn_noloop == false)
{
    spawn_noloop = true;
    x_offset = image_xscale * 10;
    x += x_offset;
}

switch (scene)
{
    case 0:
        if (image_alpha < 1)
            image_alpha += 0.2;
        
        break;
}

if (can_move == true)
{
    var lerp_speed = 0.25;
    
    if (image_speed != 0)
    {
        x_offset = 0;
        lerp_speed = 0.75;
    }
    
    var xx = (obj_heart_battle_fighting_parent.x - x_diff) + x_offset;
    x = lerp(x + irandom_range(-2, 2), xx, lerp_speed);
    y = lerp(y + irandom_range(-2, 2), obj_heart_battle_fighting_parent.y - y_diff, 0.25);
}
