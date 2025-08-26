if (live_call())
    return global.live_result;

with (obj_ceroba_follower)
{
    up_sprite = spr_ceroba_up_walk;
    right_sprite = spr_ceroba_right_walk;
    down_sprite = spr_ceroba_down_walk;
    left_sprite = spr_ceroba_left_walk;
    up_sprite_idle = spr_ceroba_up_talk;
    right_sprite_idle = spr_ceroba_right_talk;
    down_sprite_idle = spr_ceroba_down_talk;
    left_sprite_idle = spr_ceroba_left_talk;
    up_sprite_run = spr_ceroba_up_run;
    right_sprite_run = spr_ceroba_right_run;
    down_sprite_run = spr_ceroba_down_run;
    left_sprite_run = spr_ceroba_left_run;
    npc_move_delay_max = 10;
    npc_move_current = 0;
    last_player_dir = obj_pl.direction;
    
    for (var i = npc_move_delay_max; i > 0; i--)
    {
        x_new[i] = -1;
        y_new[i] = -1;
        dir_new[i] = obj_pl.direction;
        sprinting_new[i] = false;
    }
    
    image_index = 0;
    image_speed = 0;
    npc_reset = false;
    is_talking = false;
    follower_idle = true;
    npc_actor = obj_ceroba_npc;
    
    if (x != obj_pl.x || y != obj_pl.y)
    {
        var player_distance = point_distance(x, y, obj_pl.x, obj_pl.y) / 10;
        
        for (var i = 0; i <= npc_move_delay_max; i++)
        {
            x_new[i] = x + (((obj_pl.x - x) / npc_move_delay_max) * i);
            y_new[i] = y + (((obj_pl.y - y) / npc_move_delay_max) * i);
            npc_move_current += 1;
        }
    }
}

scr_load_palette_shader(0);
palette_index = 0;
event_perform(ev_step, ev_step_normal);
