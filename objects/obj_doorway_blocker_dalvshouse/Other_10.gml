if (live_call())
    return global.live_result;

if (waiter == 0)
    waiter++;

if (waiter == 1)
{
    global.cutscene = true;
    obj_pl.direction = 180;
    waiter++;
}

if (waiter == 2)
{
    scr_text();
    
    with (msg)
    {
        if (!instance_exists(obj_dialoguebox_dummy))
            instance_create(0, 0, obj_dialoguebox_dummy);
        
        portrait = true;
        sndfnt = sndfnt_default;
        sndfnt_array[0] = sndfnt_dalv;
        sndfnt_array[1] = sndfnt_default;
        sndfnt_array[2] = sndfnt_dalv;
        message[0] = "* Are you ready to leave?";
        message[1] = "* Leave Dalv's house?";
        prt[0] = spr_dalv_head_regular;
        
        if (outcome == 1 && message_current == 1)
        {
            obj_doorway_blocker_dalvshouse.response = "yes";
            obj_doorway_blocker_dalvshouse.waiter = 7;
            message[2] = "* If that's what you want,#  I'll lead the way.";
            prt[2] = spr_dalv_head_moderate;
            sndfnt = sndfnt_dalv;
        }
        else if (outcome == 2 && message_current == 1)
        {
            obj_doorway_blocker_dalvshouse.response = "no";
            obj_doorway_blocker_dalvshouse.waiter = 7;
            message[2] = "* Alright, take as long as#  you like.";
            prt[2] = spr_dalv_head_moderate;
            sndfnt = sndfnt_dalv;
        }
        
        if (message_current == 0 || message_current == 2)
        {
            sndfnt = sndfnt_dalv;
        }
        else
        {
            obj_dalv2.image_index = 0;
            obj_dalv2.image_speed = 0;
            sndfnt = sndfnt_default;
        }
        
        ch_msg = 1;
        ch[1] = "Yes";
        ch[2] = "No";
    }
}

if (waiter == 5 && !instance_exists(obj_dialogue))
    waiter++;

if (waiter == 6)
{
    scr_text();
    
    with (msg)
    {
        if (obj_doorway_blocker_dalvshouse.response == "yes")
        {
            portrait = true;
            sndfnt = sndfnt_dalv;
            message[0] = "* If that's what you want,#  I'll lead the way.";
            prt[0] = spr_dalv_head_moderate;
        }
        else if (obj_doorway_blocker_dalvshouse.response == "no")
        {
            portrait = true;
            sndfnt = sndfnt_dalv;
            message[0] = "* Alright, take as long as#  you like.";
            prt[0] = spr_dalv_head_moderate;
        }
    }
    
    waiter++;
}

if (waiter >= 7 && waiter <= 8 && !instance_exists(obj_dialogue))
{
    with (obj_dialoguebox_dummy)
        instance_destroy();
    
    if (response == "yes")
    {
        instance_create_depth(obj_pl.x, obj_pl.y, obj_pl.depth, obj_player_npc);
        obj_pl.image_alpha = 0;
        waiter = 10;
    }
    
    if (response == "no")
    {
        obj_dalv2.direction = 270;
        
        if (obj_dalv2.x == obj_dalv2.default_x_dalvshouse && obj_dalv2.y == obj_dalv2.default_y_dalvshouse)
        {
            if (!instance_exists(obj_player_npc))
                instance_create_depth(obj_pl.x, obj_pl.y, obj_pl.depth, obj_player_npc);
            
            obj_pl.image_alpha = 0;
            waiter = 9;
        }
    }
}

if (waiter == 9)
{
    if (cutscene_npc_walk(obj_player_npc, obj_pl.x, 115, 3, "y", "up"))
    {
        user_event_0_activated = false;
        global.cutscene = false;
        waiter = 0;
        obj_pl.alarm[0] = 1;
        instance_destroy(obj_player_npc);
    }
}

if (waiter == 10)
{
    if (cutscene_npc_walk(obj_player_npc, obj_pl.x, 115, 3, "y", "up"))
    {
        obj_dalv2.destination_x_dalv = 219;
        obj_dalv2.destination_y_dalv = 90;
        no_loop_autowalk = false;
        waiter = 11;
        instance_destroy(obj_player_npc);
    }
}

if (waiter == 11)
{
    if (obj_dalv2.x == obj_dalv2.destination_x_dalv && obj_dalv2.y == obj_dalv2.destination_y_dalv)
        waiter++;
}

if (waiter == 12)
{
    obj_dalv2.destination_x_dalv = 220;
    obj_dalv2.destination_y_dalv = -40;
    
    if (obj_dalv2.x == 220 && obj_dalv2.y <= 20)
    {
        with (obj_pl)
        {
            if (!instance_exists(obj_transition))
            {
                obj_pl.state = scr_frozen_state;
                alarm[0] = 8;
                trn = instance_create(x, y, obj_transition);
                trn.newRoom = 36;
                trn.xx = 156;
                trn.yy = 530;
            }
        }
    }
    
    if (abs(obj_pl.y - obj_dalv2.y) > 40)
    {
        with (obj_pl)
        {
            if (state != scr_autowalk_state)
            {
                autowalk_direction = "up";
                state = scr_autowalk_state;
            }
            
            player_mode = "DalvExit";
        }
    }
}

if (waiter >= 1 && waiter < 11)
    obj_dalv2.direction = 0;
