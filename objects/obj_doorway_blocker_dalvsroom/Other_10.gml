if (waiter == 0)
{
    global.cutscene = true;
    
    if (!instance_exists(obj_player_npc))
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
    
    with (obj_player_npc)
    {
        can_walk = true;
        down_sprite = spr_pl_up;
        down_sprite_idle = spr_pl_up;
        x_dest[0] = x;
        y_dest[0] = 150;
        actor_speed = 3;
        axis_override = "y";
        end_direction = "up";
    }
    
    if (!alarm[0] && obj_player_npc.npc_arrived == true)
    {
        waiter = 1;
        instance_destroy(obj_player_npc);
    }
}

if (waiter == 1)
{
    obj_dalv2.destination_x_dalv = 170;
    obj_dalv2.destination_y_dalv = 120;
    no_loop_autowalk = false;
    waiter++;
}

if (waiter == 2)
{
    if (obj_dalv2.x == obj_dalv2.destination_x_dalv && obj_dalv2.y == obj_dalv2.destination_y_dalv)
        waiter++;
}

if (waiter == 3)
{
    obj_dalv2.direction = 270;
    scr_text();
    
    with (msg)
    {
        if (global.interaction_count_dalvroomhall_door == 0)
        {
            portrait = true;
            sndfnt = sndfnt_dalv;
            message[0] = "* ...";
            message[1] = "* Let's look at something#  else, okay?";
            prt[0] = spr_dalv_head_sad;
            prt[1] = spr_dalv_head_sad_side;
        }
        else
        {
            portrait = true;
            sndfnt = sndfnt_dalv;
            message[0] = "* ...";
            prt[0] = spr_dalv_head_sad_side;
        }
    }
    
    if (!global.dialogue_open)
        waiter++;
}

if (waiter == 4)
{
    if (global.interaction_count_dalvroomhall_door == 0)
        global.interaction_count_dalvroomhall_door++;
    
    waiter++;
}

if (waiter >= 5 && waiter <= 6 && !instance_exists(obj_dialogue))
{
    obj_dalv2.destination_x_dalv = obj_dalv2.default_x_dalvroomhall;
    obj_dalv2.destination_y_dalv = obj_dalv2.default_y_dalvroomhall;
    
    if (obj_dalv2.x == obj_dalv2.default_x_dalvroomhall && obj_dalv2.y == obj_dalv2.default_y_dalvroomhall)
        waiter++;
}

if (waiter == 7)
{
    user_event_0_activated = false;
    global.cutscene = false;
    waiter = 0;
    obj_pl.alarm[0] = 1;
}
