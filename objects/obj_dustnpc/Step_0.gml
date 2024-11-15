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

if (((keyboard_multicheck_pressed(0) && scr_interact() == true) || next == true) && talk == 0)
{
    scr_text();
    talk = 1;
    
    switch (global.sideNpc[5])
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Oh, are you hiding from#  Dalv too?";
                message[1] = "* There isn't much room but#  you're welcome to join me!";
                message[2] = "* I know lots of games#  to kill time!";
                message[3] = "* How about we play count#  the dust!";
                message[4] = "* We see who can count#  the most dust before#  getting bored!";
                message[5] = "* Ready? Go!";
            }
            
            global.sideNpc[5] = 1;
            global.cutscene = true;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Thirty-three, thirty-four,#  thirty-five...";
            }
            
            global.sideNpc[5] = 2;
            next = false;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Seventy-eight, seventy-nine...";
            }
            
            global.sideNpc[5] = 3;
            next = false;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* ACHOO!";
                message[1] = "* Oh dear... I lost#  count...";
                message[2] = "* I guess you win then!";
            }
            
            global.sideNpc[5] = 4;
            next = false;
            global.cutscene = false;
            break;
        
        case 4:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Is it dusty in here#  or is it just me?";
            }
            
            break;
    }
}

if (!instance_exists(obj_dialogue) && talk == true)
{
    talk = false;
    
    if (global.sideNpc[5] < 3)
        alarm[0] = 30;
    
    if (global.sideNpc[5] == 3)
        alarm[1] = 10;
}
