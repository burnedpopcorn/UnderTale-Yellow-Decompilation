event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Swimming is a great full-body#  workout.";
                message[1] = "* Are you seeing these limbs?#  I've never been so toned!";
                message[2] = "* On top of that, I've dropped a#  whole goggle size!";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Sorry, can't talk anymore.";
                message[1] = "* I've got swimming to do.";
                message[2] = "* Those pounds don't drop#  themselves.";
            }
            
            break;
    }
}

image_speed = 0.3;

if (is_talking == true)
    exit;

if (swimmer_dir == "left")
{
    if (x > 115)
    {
        if (swimmer_hsp > -max_swimmer_hsp)
            swimmer_hsp -= swimmer_accel;
    }
    else
    {
        swimmer_dir = "right";
    }
}

if (swimmer_dir == "right")
{
    if (x < 175)
    {
        if (swimmer_hsp < max_swimmer_hsp)
            swimmer_hsp += swimmer_accel;
    }
    else
    {
        swimmer_dir = "left";
    }
}

if (swimmer_hsp < 0)
    image_xscale = 1;
else if (swimmer_hsp > 0)
    image_xscale = -1;

x += swimmer_hsp;
