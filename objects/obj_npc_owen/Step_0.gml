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
                message[0] = "* Ugh. This place has like no#  hygiene standards, yup.";
                message[1] = "* I don't think these sheets have#  ever been washed at all, yup.";
                message[2] = "* Not to mention the food, it's#  barely passable, yup.";
                message[3] = "* You could find stuff more fresh#  in the dump, yup.";
                message[4] = "* ...";
                message[5] = "* Huh? Sick? Nuh-uh, I'm just#  here to complain, yup.";
            }
            
            npc_flag++;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Not to be rude, but I'd like#  some privacy, yup.";
                message[1] = "* Some monsters these days have#  no manners, yup yup.";
            }
            
            break;
    }
}
