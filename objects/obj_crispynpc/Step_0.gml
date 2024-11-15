script_execute(scr_depth, 0, 0, 0, 0, 0);

if (instance_exists(obj_dialogue) && talk == true)
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

if (keyboard_multicheck_pressed(0) && scr_interact() == true)
{
    scr_text();
    talk = 1;
    
    switch (global.sideNpc[4])
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Yo, Dalv is opening the door to#  Snowdin!";
                message[1] = "* It's been so long!";
                message[2] = "* I know what my first#  stop will be. ";
                message[3] = "* Dump, here I come! ";
            }
            
            global.sideNpc[4] = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Do you watch anime? ";
                message[1] = "* I HIGHLY recommend it!";
                message[2] = "* I mean some of it is#  total garbage... ";
                message[3] = "* But most of it is SOOO good!";
            }
            
            global.sideNpc[4] = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Maybe we could watch some#  together!";
            }
            
            break;
    }
}

if (!instance_exists(obj_dialogue) && talk == true)
    talk = false;
