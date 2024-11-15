var i, player_distance;

if (global.player_sprites == "dunescave")
{
    palette_index = 4;
    shader_on = true;
}
else if (global.player_sprites == "normal")
{
    shader_on = false;
}

if (obj_pl.yprevious != obj_pl.y || obj_pl.xprevious != obj_pl.x)
{
    npc_move_current = clamp(npc_move_current + 1, 0, npc_move_delay_max);
    x_new[npc_move_current] = obj_pl.x;
    y_new[npc_move_current] = obj_pl.y;
    dir_new[npc_move_current] = obj_pl.direction;
    
    if (abs(obj_pl.yprevious - obj_pl.y) >= 5 || abs(obj_pl.xprevious - obj_pl.x) >= 5)
        sprinting_new[npc_move_current] = true;
    else
        sprinting_new[npc_move_current] = false;
}

if (npc_move_current >= npc_move_delay_max)
{
    npc_move_current = clamp(npc_move_current - 1, 0, npc_move_delay_max);
    x = x_new[1];
    y = y_new[1];
    follower_idle = false;
    
    switch (dir_new[1])
    {
        case 0:
            if (sprinting_new[1] == true)
                sprite_index = right_sprite_run;
            else
                sprite_index = right_sprite;
            
            break;
        
        case 90:
            if (sprinting_new[1] == true)
                sprite_index = up_sprite_run;
            else
                sprite_index = up_sprite;
            
            break;
        
        case 180:
            if (sprinting_new[1] == true)
                sprite_index = left_sprite_run;
            else
                sprite_index = left_sprite;
            
            break;
        
        case 270:
            if (sprinting_new[1] == true)
                sprite_index = down_sprite_run;
            else
                sprite_index = down_sprite;
            
            break;
    }
    
    image_speed = 0.2;
    
    if (sprinting_new[1] == true)
        image_speed = 0.3;
    
    for (i = 0; i < npc_move_delay_max; i++)
    {
        x_new[i] = x_new[i + 1];
        y_new[i] = y_new[i + 1];
        dir_new[i] = dir_new[i + 1];
        sprinting_new[i] = sprinting_new[i + 1];
    }
}
else
{
    follower_idle = true;
    
    switch (dir_new[1])
    {
        case 0:
            sprite_index = right_sprite_idle;
            break;
        
        case 90:
            sprite_index = up_sprite_idle;
            break;
        
        case 180:
            sprite_index = left_sprite_idle;
            break;
        
        case 270:
            sprite_index = down_sprite_idle;
            break;
    }
}

if (npc_reset == true)
{
    event_perform(ev_create, 0);
    player_distance = point_distance(x, y, obj_pl.x, obj_pl.y) / 10;
    player_distance = clamp(player_distance, 1, 999);
    
    for (i = npc_move_delay_max; i > 0; i--)
    {
        x_new[i] = x + (sign(obj_pl.x - x) * (i * player_distance));
        y_new[i] = y + (sign(obj_pl.y - y) * (i * player_distance));
        
        if (point_distance(x, y, x_new[npc_move_delay_max], y) > point_distance(x, y, x, y_new[npc_move_delay_max]))
        {
            if (x_new[npc_move_delay_max] > x)
                dir_new[i] = 0;
            else
                dir_new[i] = 180;
        }
        else if (y_new[npc_move_delay_max] > y)
        {
            dir_new[i] = 270;
        }
        else
        {
            dir_new[i] = 90;
        }
        
        npc_move_current += 1;
    }
    
    npc_reset = false;
}

if (follower_idle == true)
{
    if (instance_exists(obj_dialogue) && is_talking == true)
    {
        if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
        {
            image_speed = 0;
            image_index = 0;
        }
        else
        {
            image_speed = 0.2;
        }
    }
    else
    {
        image_speed = 0;
        image_index = 0;
        is_talking = false;
    }
}

if (sprites_water_override == true)
{
    up_sprite = spr_martlet_up_puddle;
    right_sprite = spr_martlet_right_puddle;
    down_sprite = spr_martlet_down_puddle;
    left_sprite = spr_martlet_left_puddle;
    up_sprite_idle = spr_martlet_up_talk_puddle;
    right_sprite_idle = spr_martlet_right_talk_puddle;
    down_sprite_idle = spr_martlet_down_talk_puddle;
    left_sprite_idle = spr_martlet_left_talk_puddle;
    up_sprite_run = spr_martlet_up_run_puddle;
    right_sprite_run = spr_martlet_right_run_puddle;
    down_sprite_run = spr_martlet_down_run_puddle;
    left_sprite_run = spr_martlet_left_run_puddle;
}
else if (sprites_water_override == 2)
{
    sprites_water_override = 0;
    up_sprite = spr_martlet_up;
    right_sprite = spr_martlet_right;
    down_sprite = spr_martlet_down;
    left_sprite = spr_martlet_left;
    up_sprite_idle = spr_martlet_up_talk;
    right_sprite_idle = spr_martlet_right_talk;
    down_sprite_idle = spr_martlet_down_talk;
    left_sprite_idle = spr_martlet_left_talk;
    up_sprite_run = spr_martlet_up_run;
    right_sprite_run = spr_martlet_right_run;
    down_sprite_run = spr_martlet_down_run;
    left_sprite_run = spr_martlet_left_run;
}
