var battle_box;

if (live_call())
    return global.live_result;

battle_box = 3154;
show_debug_message(bullet_dist);

if (bullet_dist < 3)
    instance_destroy();

switch (scene)
{
    case 0:
        break;
    
    case 1:
        if (speed_current < speed_max)
            speed_current += accel_speed;
        
        bullet_dist -= speed_current;
        break;
}

x = battle_box.x + lengthdir_x(bullet_dist, direction);
y = battle_box.y + lengthdir_y(bullet_dist, direction);
