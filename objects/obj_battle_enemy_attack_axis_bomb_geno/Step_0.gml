var battle_box, base_speed, angle_dif;

if (live_call())
    return global.live_result;

battle_box = 3154;

if (dir_start == -1)
{
    dir_start = gravity_direction;
    image_angle = dir_start - 270;
}

if (image_alpha < 1)
{
    image_alpha += 0.2;
}
else if (noloop == false)
{
    base_speed = 12;
    
    switch (gravity_direction)
    {
        case 0:
            break;
        
        case 180:
            break;
        
        case 90:
            break;
        
        case 270:
            break;
    }
    
    gravity = 0.5;
    noloop = true;
}

if (noloop == true && dir_switch == false)
{
    if (bomb_collision_check())
    {
        dir_switch = true;
        angle_dif = angle_difference(gravity_direction, point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y));
        gravity_direction -= (angle_dif * 0.01);
    }
}

if (dir_switch)
{
    angle_dif = angle_difference(gravity_direction, dir_start - 180);
    gravity_direction -= (angle_dif * 0.5);
    gravity = 0.8;
    
    if (abs(angle_dif) <= 1 && speed > 1)
    {
        if (bomb_collision_check() && !destroy_check)
        {
            audio_play_sound(snd_bullet_warning, 1, 0);
            destroy_check = true;
            image_blend = c_red;
            alarm[0] = 3;
        }
    }
}

if (destroy_check == true)
{
    destroy_timer--;
    
    if (destroy_timer <= 0)
        instance_destroy();
}

function bomb_collision_check()
{
    if (dir_start == 90 || dir_start == 270)
    {
        if (collision_line(x - 900, y, x + 900, y, obj_heart_battle_fighting_parent, false, true))
            return true;
    }
    else if (dir_start == 0 || dir_start == 180)
    {
        if (collision_line(x, y - 900, x, y + 900, obj_heart_battle_fighting_parent, false, true))
            return true;
    }
}

speed = clamp(speed, 0, speed_max);
