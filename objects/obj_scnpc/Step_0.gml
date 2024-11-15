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
    
    switch (global.sideNpc[2])
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Now I can fulfill my dreams#  of opening a free hugs#  booth!";
                message[1] = "* I'll get to see everyone's#  smiling faces! ";
            }
            
            global.sideNpc[2] = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Watch out Dalv! You're#  well overdue for a big#  hug! ";
                message[1] = "* Everyone needs a good hug#  now and then! ";
                message[2] = "* Especially big mopey mopes#  like Dalv! ";
            }
            
            global.sideNpc[2] = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* If you ever turn into a#  big mopey mope like Dalv#  call my new business!";
                message[1] = "* Sweet Corn's Perennial Hugs!";
                message[2] = "* No really! Give me your#  phone and I'll give#  you the number!";
            }
            
            global.sideNpc[2] = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Hugs make the world#  go 'round!";
            }
            
            break;
    }
}

if (!instance_exists(obj_dialogue) && talk == true)
    talk = false;
