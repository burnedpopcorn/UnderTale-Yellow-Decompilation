var i;

if (obj_pl.yprevious != obj_pl.y || obj_pl.xprevious != obj_pl.x)
{
    npc_move_current += 1;
    x_new[npc_move_current] = obj_pl.x;
    y_new[npc_move_current] = obj_pl.y;
    dir_new[npc_move_current] = obj_pl.direction;
}

if (npc_move_current >= npc_move_delay_max)
{
    npc_move_current -= 1;
    x = x_new[1];
    y = y_new[1];
    
    switch (dir_new[1])
    {
        case 0:
            sprite_index = right_sprite;
            break;
        
        case 90:
            sprite_index = up_sprite;
            break;
        
        case 180:
            sprite_index = left_sprite;
            break;
        
        case 270:
            sprite_index = down_sprite;
            break;
    }
    
    can_animate = true;
    image_speed = 0.2;
    
    for (i = 0; i < npc_move_delay_max; i++)
    {
        x_new[i] = x_new[i + 1];
        y_new[i] = y_new[i + 1];
        dir_new[i] = dir_new[i + 1];
    }
}

if (can_animate == true && npc_move_current < npc_move_delay_max)
{
    if (on_animation_end())
    {
        image_index = 0;
        image_speed = 0;
        can_animate = false;
    }
}
