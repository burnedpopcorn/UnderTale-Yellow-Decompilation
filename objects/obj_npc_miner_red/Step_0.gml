image_speed = 0.2;

if (fade_out == true)
{
    can_walk = false;
    image_speed = 0;
    image_index = 0;
    
    if (image_alpha > 0)
        image_alpha -= 0.1;
    else
        instance_destroy();
    
    exit;
}

event_inherited();

if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
{
    switch (obj_pl.direction)
    {
        case 0:
            npc_direction = "left";
            break;
        
        case 90:
            npc_direction = "down";
            break;
        
        case 180:
            npc_direction = "right";
            break;
        
        case 270:
            npc_direction = "up";
            break;
    }
    
    interact = true;
    can_walk = false;
    waiter = 1;
}

if (waiter == 1)
{
    image_speed = 0;
    image_index = 0;
    scr_text();
    
    if (global.dunes_flag[12] == 1)
    {
        with (msg)
        {
            if (global.route != 3)
            {
                message[0] = "* Watch it!";
                message[1] = "* I have places to be!";
                message[2] = "* Got a call about a job in#  Snowdin.";
                message[3] = "* I was supposed to be there#  yesterday, but the walk is#  really far.";
                message[4] = "* Wasn't feeling up to it.";
                message[5] = "* Oh well. On I go!";
            }
            else
            {
                message[0] = "* Watch i- ";
                message[1] = "* Um...";
                message[2] = "* Sorry, didn't mean to block#  the path.";
                message[3] = "* You... take care, I guess.";
                message[4] = "* (Yeesh...)";
            }
        }
    }
    else
    {
        with (msg)
        {
            if (global.route != 3)
                message[0] = "* Can't talk right now.";
            else
                message[0] = "* I uh... gotta go.";
        }
    }
    
    if (!global.dialogue_open)
    {
        waiter = 0;
        
        if (global.dunes_flag[12] == 1)
            global.dunes_flag[12] = 2;
    }
    
    exit;
}

if (npc_arrived == 1)
    fade_out = true;

if (place_meeting(x - 20, y, obj_pl))
{
    image_speed = 0;
    image_index = 0;
    can_walk = false;
}
else if (!global.dialogue_open)
{
    can_walk = true;
}

while (place_meeting(x, y, obj_pl))
    obj_pl.y -= 1;

if (x < (__view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0)) && global.dunes_flag[12] == 0)
    global.dunes_flag[12] = 1;
