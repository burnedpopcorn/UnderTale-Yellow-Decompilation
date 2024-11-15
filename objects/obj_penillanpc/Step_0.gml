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
    
    switch (global.sideNpc[1])
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Wow, I can go wherever I want#  now? I was tired of hiding#  from Dalv! ";
                message[1] = "* You can only draw so many#  landscapes of tiny cracks and#  good hiding rocks! ";
            }
            
            global.sideNpc[1] = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* I finally got to see the big#  drawing of a sweet corn cob#  I made!";
                message[1] = "* I can't believe Dalv hung#  it up!";
                message[2] = "* I know he loves his corn#  but I can't believe he#  liked my art that much!";
                message[3] = "* I also can't believe we've been#  friends for so long and I only#  just got to see his house!";
            }
            
            global.sideNpc[1] = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* I've always considered Dalv#  and me to be friends. ";
                message[1] = "* He just likes to not#  be bothered sometimes. ";
                message[2] = "* I get that. Sometimes I just#  want to be alone to do#  my art! ";
                message[3] = "* I mean, if we weren't friends,#  I wouldn't go out of my way#  so much to give him his space! ";
            }
            
            global.sideNpc[1] = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* I just can't wait to sketch#  the outside!";
            }
            
            break;
    }
}

if (!instance_exists(obj_dialogue) && talk == true)
    talk = false;
