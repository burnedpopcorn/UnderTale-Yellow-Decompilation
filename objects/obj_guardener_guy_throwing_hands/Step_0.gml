var dir_min, dir_max, item;

if (live_call())
    return global.live_result;

if (robot_parent != -4)
{
    switch (robot_parent.object_index)
    {
        case obj_guardener_guy_a_noarms:
            x = robot_parent.x - 3;
            y = robot_parent.y - 15;
            break;
        
        case obj_guardener_guy_b_noarms:
            x = robot_parent.x + 3;
            y = robot_parent.y - 10;
            break;
    }
}

if (image_speed == 0)
{
    if (throw_delay > 0)
    {
        throw_delay--;
    }
    else
    {
        image_index = 0;
        image_speed = 1;
        
        if (bombs == true)
            throw_delay = throw_delay_bomb;
    }
}

if (image_index >= (image_number - 1))
{
    image_speed = 0;
    image_index = 0;
    throw_noloop = false;
}

if (image_index >= 5 && throw_noloop == false)
{
    if (bombs == true)
    {
        dir_min = 60;
        dir_max = 80;
        item = instance_create_depth(x, y, depth, obj_battle_enemy_attack_guardener_throwable_bomb);
        item.direction = irandom_range(dir_min, dir_max) * image_xscale;
        item.speed = 8 * image_xscale;
    }
    else
    {
        item = instance_create_depth(x, y, depth, obj_battle_enemy_attack_guardener_throwable_item);
        dir_min = 25;
        dir_max = 80;
        item.direction = irandom_range(dir_min, dir_max) * image_xscale;
        item.speed = 8 * image_xscale;
    }
    
    throw_noloop = true;
}
