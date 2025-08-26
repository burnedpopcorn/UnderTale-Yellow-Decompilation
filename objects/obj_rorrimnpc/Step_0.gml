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

if (keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true)
{
    scr_text();
    talk = true;
    
    switch (global.sideNpc[3])
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* This new \"not hiding\" thing#  will take some getting used#  to. ";
                message[1] = "* I wonder what kind of#  adventures I can go on#  now.";
            }
            
            global.sideNpc[3] = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* I could go out and solve#  the secrets of the entire#  Underground!";
                message[1] = "* Meet every monster, brave#  every danger, see everything#  I can!";
                message[2] = "* Maybe I'll even find#  a way back to the Surface!#* You never know!";
                message[3] = "* Anyone can be a hero.#* Maybe you could be one#  too!";
            }
            
            global.sideNpc[3] = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* You might wanna get a#  new hat. That one is#  looking a bit worn.";
            }
            
            break;
    }
}

if (!instance_exists(obj_dialogue) && talk == true)
    talk = false;
