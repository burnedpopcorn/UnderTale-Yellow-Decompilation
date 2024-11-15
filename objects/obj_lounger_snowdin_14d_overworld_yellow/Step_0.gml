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
                sndfnt = 99;
                message[0] = "* This is the hottest spot in#  Snowdin. Quite literally.";
                message[1] = "* I've wanted to come here for#  forever and this is finally my#  chance.";
                message[2] = "* It was worth the wait. This is#  complete bliss.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* You know what the best part of#  this place is?";
                message[1] = "* No one knows why the water is#  so hot here!";
                message[2] = "* It's a mystery! Not a monster#  alive could tell you!";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* There are all sorts of theories#  of course.";
                message[1] = "* Some say it's heated by hot#  rocks deep underground.";
                message[2] = "* Some say it's caused by#  volcanic activity.";
                message[3] = "* Some say it's heated by runoff#  from the Core in Hotland.";
                message[4] = "* Whatever it is, the water is so#  relaxing that folks don't seem#  to care.";
                message[5] = "* At least I know I don't.#  Everything just melts away.";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Ahhhh.";
                message[1] = "* So nice and warm.";
            }
    }
}

depth = -999;
