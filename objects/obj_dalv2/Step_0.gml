var __b__;

script_execute(scr_depth, 0, 0, 0, 0, 0);

if (fadeout == true)
    scr_npc_fade();

if (spritelock == true)
{
    if (vspeed != 0 || hspeed != 0 || path_speed != 0 || npc_walking == true)
    {
        switch (direction div 90)
        {
            case 0:
                sprite_index = cdalv_right;
                break;
            
            case 1:
                sprite_index = cdalv_up;
                break;
            
            case 2:
                sprite_index = cdalv_left;
                break;
            
            case 3:
                sprite_index = cdalv_down;
                break;
        }
    }
    else
    {
        switch (direction div 90)
        {
            case 0:
                sprite_index = cdalv_rightt;
                break;
            
            case 1:
                sprite_index = cdalv_up;
                break;
            
            case 2:
                sprite_index = cdalv_leftt;
                break;
            
            case 3:
                sprite_index = cdalv_downt;
                break;
        }
        
        if (instance_exists(obj_dialogue) && (obj_dialogue.sndfnt == 100 || obj_dialogue.sndfnt_array[clamp(obj_dialogue.message_current, 0, array_length(obj_dialogue.sndfnt_array) - 1)] == 100))
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
    }
}

if (speed > 0)
    image_speed = 0.2;

with (other)
{
    if (room == rm_dalvshouse && global.flag[28] == 0)
    {
        if (image_alpha == 1 && waiter == 0)
            waiter = 1;
        
        if (waiter > 2 && waiter < 15)
            waiter++;
        
        if (waiter == 1)
        {
            image_speed = 0.2;
            path_start(pt_dalvhouse2, 3, path_action_stop, false);
            waiter++;
        }
        
        if (waiter == 2 && path_position == 1)
        {
            waiter++;
            image_speed = 0;
        }
        
        if (waiter == 15)
        {
            path_speed = 0;
            speed = 0;
            scr_text();
            
            with (msg)
            {
                sndfnt = 100;
                message[0] = "* Alright, I know you're#  probably eager to get#  going.";
                message[1] = "* But feel free to#  stay as long as#  you like.";
                prt[0] = 1755;
                prt[1] = 1769;
            }
            
            waiter++;
        }
        
        if (waiter == 16 && !instance_exists(obj_dialogue))
        {
            path_start(pt_dalvhouse3, 3, path_action_stop, false);
            image_speed = 0.2;
            waiter++;
        }
        
        if (waiter == 17 && path_position == 1)
        {
            image_speed = 0;
            path_speed = 0;
            npc_walking = false;
            direction = 270;
            image_index = 0;
            global.cutscene = false;
            global.flag[28] = 1;
            global.dalv_house_enter_count = 2;
            obj_pl.state = scr_normal_state;
            waiter++;
        }
    }
    
    if (global.flag[28] == 1 && room != rm_dalvhallway)
    {
        if (image_alpha == 1 && waiter == 0)
        {
            if (global.dalv_house_enter_count == 2 && room == rm_dalvshouse && global.lastroom != "rm_dalvroomhall" && global.lastroom != "rm_dalvhallway")
            {
                if (global.flag[17] != 1)
                {
                    obj_pl.alarm[0] = 1;
                    instance_destroy();
                    exit;
                }
                
                scr_text();
                
                with (msg)
                {
                    sndfnt = 100;
                    message[0] = "* Welcome back.";
                    message[1] = "* Um... I'm not sure what#  to say...";
                    message[2] = "* I had some cards made#  for emergency friend#  situations...#";
                    message[3] = "* ...but I've misplaced#  them.";
                    message[4] = "* Make yourself at home...#  again.";
                    prt[0] = 1769;
                    prt[1] = 1780;
                    prt[2] = 1763;
                    prt[3] = 1763;
                    prt[4] = 1755;
                }
            }
            
            waiter++;
        }
        
        if (waiter > 2 && waiter < 15)
            waiter++;
        
        if (waiter == 1 && !instance_exists(obj_dialogue))
        {
            image_speed = 0.2;
            npc_walking = false;
            
            if (global.lastroom != "rm_dalvshouse" && global.lastroom != "rm_dalvroomhall")
                axis_override = "x";
            else
                axis_override = "0";
            
            scr_walk_ai(destination_x_dalv, destination_y_dalv, 1031, 3, axis_override);
            
            if (x == destination_x_dalv && y == destination_y_dalv)
                waiter++;
        }
        
        if (waiter == 2)
        {
            waiter++;
            image_speed = 0;
        }
        
        if (waiter == 15)
        {
            image_speed = 0;
            direction = 270;
            image_index = 0;
            obj_pl.state = scr_normal_state;
            waiter++;
        }
        
        if (global.cutscene == true)
        {
            if (no_loop_room_specific_walking == false)
            {
                no_loop_destination_dalv = false;
                no_loop_room_specific_walking = true;
            }
            
            if (x != destination_x_dalv || y != destination_y_dalv)
            {
                image_speed = 0.2;
                npc_walking = false;
                
                if (room == rm_dalvshouse)
                {
                    if (obj_fridge.waiter > 0)
                    {
                        if (destination_x_dalv == default_x_dalvshouse && destination_y_dalv == default_y_dalvshouse)
                            scr_walk_ai(destination_x_dalv, destination_y_dalv, 1031, 3, "x");
                        else
                            scr_walk_ai(destination_x_dalv, destination_y_dalv, 1031, 3, "y");
                    }
                    else if (obj_books.waiter > 0)
                    {
                        if (destination_x_dalv == default_x_dalvshouse && destination_y_dalv == default_y_dalvshouse)
                            scr_walk_ai(destination_x_dalv, destination_y_dalv, 1031, 3, "x");
                        else
                            scr_walk_ai(destination_x_dalv, destination_y_dalv, 1031, 3, "y");
                    }
                    else if (obj_dalv2.waiter > 0 || obj_doorway_blocker_dalvshouse.waiter > 0)
                    {
                        scr_walk_ai(destination_x_dalv, destination_y_dalv, 1031, 3, "x");
                    }
                    else
                    {
                        scr_walk_ai(destination_x_dalv, destination_y_dalv, 1031, 3, "0");
                    }
                }
                else if (room == rm_dalvroomhall)
                {
                    if (obj_broom.waiter > 0)
                    {
                        if (destination_x_dalv == default_x_dalvroomhall && destination_y_dalv == default_y_dalvroomhall)
                            scr_walk_ai(destination_x_dalv, destination_y_dalv, 1031, 3, "x");
                        else
                            scr_walk_ai(destination_x_dalv, destination_y_dalv, 1031, 3, "y");
                    }
                    else if (obj_doorway_blocker_dalvsroom.waiter > 0)
                    {
                        scr_walk_ai(destination_x_dalv, destination_y_dalv, 1031, 3, "x");
                    }
                    else
                    {
                        scr_walk_ai(destination_x_dalv, destination_y_dalv, 1031, 3, "0");
                    }
                }
            }
            else if (x == destination_x_dalv && y == destination_y_dalv)
            {
                if (sprite_index == cdalv_right || sprite_index == cdalv_left || sprite_index == cdalv_up || sprite_index == cdalv_down)
                {
                    image_speed = 0;
                    image_index = 0;
                }
                
                no_loop_room_specific_walking = false;
                
                if (room == rm_dalvshouse)
                {
                    if (obj_wardrobe.waiter > 0 || obj_flower_pot.waiter > 0 || destination_x_dalv != default_x_dalvshouse || destination_y_dalv != default_y_dalvshouse)
                    {
                        if (x > obj_pl.x)
                            direction = 180;
                        else if (x < obj_pl.x)
                            direction = 0;
                        else if (y > obj_pl.y)
                            direction = 90;
                        else
                            direction = 270;
                    }
                    else
                    {
                        direction = 270;
                    }
                }
                else if (room == rm_dalvroomhall)
                {
                    if (obj_painting.waiter > 0 || destination_x_dalv != default_x_dalvroomhall || destination_y_dalv != default_y_dalvroomhall)
                    {
                        if (x > obj_pl.x)
                            direction = 180;
                        else if (x < obj_pl.x)
                            direction = 0;
                        else if (y > obj_pl.y)
                            direction = 90;
                        else
                            direction = 270;
                    }
                    else
                    {
                        direction = 270;
                    }
                }
                else
                {
                    direction = 270;
                }
            }
        }
        else if (room == rm_dalvshouse && x == default_x_dalvshouse && y == default_y_dalvshouse)
        {
            direction = 270;
        }
        else if (room == rm_dalvroomhall && x == default_x_dalvroomhall && y == default_y_dalvroomhall)
        {
            direction = 270;
        }
    }
}

if (room == rm_dalvhallway && obj_pl.player_mode == "DalvExit")
{
    obj_dalv2.destination_x_dalv = 156;
    obj_dalv2.destination_y_dalv = -40;
    
    if (no_loop_dalv_hallway == false)
    {
        no_loop_destination_dalv = false;
        no_loop_dalv_hallway = true;
    }
    
    scr_walk_ai(destination_x_dalv, destination_y_dalv, 1031, 3, "y");
    
    if (obj_dalv2.x == 156 && obj_dalv2.y <= 20)
    {
        with (obj_pl)
        {
            if (!instance_exists(obj_transition))
            {
                obj_pl.state = scr_frozen_state;
                alarm[0] = 8;
                trn = instance_create(x, y, obj_transition);
                trn.newRoom = 41;
                trn.xx = 160;
                trn.yy = 170;
            }
        }
    }
}

if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && dalv_talk_waiter == 0 && !instance_exists(obj_dialogue))
    dalv_talk_waiter = 1;

if (dalv_talk_waiter >= 1 && dalv_talk_waiter <= 7)
    direction = obj_pl.direction + 180;

if (dalv_talk_waiter == 1)
{
    global.cutscene = true;
    response = "nothing";
    dalv_talk_waiter++;
}

if (dalv_talk_waiter == 2)
{
    scr_text();
    
    with (msg)
    {
        if (room == rm_dalvshouse)
        {
            if (!instance_exists(obj_dialoguebox_dummy))
                instance_create(0, 0, obj_dialoguebox_dummy);
            
            portrait = true;
            sndfnt = 100;
            message[0] = "* Are you ready to leave?";
            prt[0] = 1755;
        }
        else
        {
            portrait = true;
            sndfnt = 100;
            message[0] = "* I hope I'm being a good#  host!";
            prt[0] = 1769;
        }
    }
    
    dalv_talk_waiter++;
}

if (dalv_talk_waiter == 3 && !instance_exists(obj_dialogue))
{
    if (room == rm_dalvshouse)
        dalv_talk_waiter++;
    else
        dalv_talk_waiter = 10;
}

if (dalv_talk_waiter == 4)
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        sndfnt = 99;
        message[0] = "* Leave Dalv's house?";
        
        if (outcome == 1 && message_current == 0)
        {
            obj_dalv2.response = "yes";
            obj_dalv2.dalv_talk_waiter++;
        }
        else if (outcome == 2 && message_current == 0)
        {
            obj_dalv2.response = "no";
            obj_dalv2.dalv_talk_waiter++;
        }
        
        ch_msg = 0;
        ch[1] = "Yes";
        ch[2] = "No";
    }
}

if (dalv_talk_waiter == 5 && !instance_exists(obj_dialogue))
    dalv_talk_waiter++;

if (dalv_talk_waiter == 6)
{
    scr_text();
    
    with (msg)
    {
        if (obj_dalv2.response == "yes")
        {
            portrait = true;
            sndfnt = 100;
            message[0] = "* If that's what you want,#  I'll lead the way.";
            prt[0] = 1776;
        }
        else if (obj_dalv2.response == "no")
        {
            portrait = true;
            sndfnt = 100;
            message[0] = "* Alright, take as long as#  you like.";
            prt[0] = 1776;
        }
    }
    
    dalv_talk_waiter++;
}

if (dalv_talk_waiter == 7 && !instance_exists(obj_dialogue))
{
    with (obj_dialoguebox_dummy)
        instance_destroy();
    
    if (response == "yes" && !instance_exists(obj_transition))
    {
        with (obj_pl)
        {
            if (obj_dalv2.no_loop_autowalk == false)
            {
                clover_walk_backwards = true;
                autowalk_direction = "down";
                state = scr_autowalk_state;
                alarm[1] = 20;
                obj_dalv2.no_loop_autowalk = true;
            }
            else if (alarm[1] <= 0)
            {
                obj_dalv2.dalv_talk_waiter++;
            }
        }
    }
    
    if (response == "no")
    {
        direction = 270;
        dalv_talk_waiter = 10;
    }
}

if (dalv_talk_waiter == 8)
{
    obj_dalv2.destination_x_dalv = 140;
    obj_dalv2.destination_y_dalv = 90;
    
    if (obj_dalv2.x == 140 && obj_dalv2.y == 90)
    {
        no_loop_room_specific_walking = false;
        dalv_talk_waiter++;
    }
}

if (dalv_talk_waiter == 9)
{
    obj_dalv2.destination_x_dalv = 220;
    obj_dalv2.destination_y_dalv = -60;
    
    if (obj_dalv2.x == 220 && obj_dalv2.y <= 40)
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
    
    with (obj_pl)
        player_mode = "DalvExit";
}

if (dalv_talk_waiter == 10)
{
    global.cutscene = false;
    dalv_talk_waiter = 0;
    obj_pl.alarm[0] = 1;
}

__b__ = action_if_variable(fadein, true, 0);

if (__b__)
    script_execute(anim_fade, 0.05, 0, 0, 0, 0);
