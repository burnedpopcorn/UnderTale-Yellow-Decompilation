var robot_item_x_player, robot_item_y_player, pl_image_index;

if (live_call())
    return global.live_result;

robot_item_x_player = obj_pl.x;
robot_item_y_player = obj_pl.y - 9 - (sprite_height - sprite_yoffset);

if (robot_item_is_carried && !robot_item_is_jumping)
{
    x = robot_item_x_player;
    y = robot_item_y_player;
    depth = -9999;
    pl_image_index = floor(obj_pl.image_index);
    
    if (obj_pl.direction == 0 || obj_pl.direction == 180)
    {
        if (pl_image_index == 1)
            y += 1;
    }
    else if (pl_image_index == 1 || pl_image_index == 3)
    {
        y -= 1;
    }
}
