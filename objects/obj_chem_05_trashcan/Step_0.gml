if (scr_interact() && keyboard_multicheck_pressed(0))
{
    scr_text();
    
    if (global.sworks_flag[24] == 0)
    {
        with (msg)
        {
            if (global.route == 3)
            {
                message[0] = "* (A page of rambly writings#  wastes away in the can.)";
                message[1] = "* (You take it.)";
            }
            else
            {
                message[0] = "* (You reach into the trash#  can...) \t";
                message[1] = "* (You pull out a crumpled up#  essay titled \"Mixin' It Up!\")\t";
                message[2] = "* (It's typed in size 13 font to#  better reach the minimum page#  requirement... of 1.)\t";
                message[3] = "* (You stash the essay in your#  mail bag.)";
            }
        }
        
        scr_mail_add("Mixin' It Up! (Essay)");
        global.sworks_flag[24] = 1;
    }
    else
    {
        with (msg)
            message[0] = "* (Nothing useful here.)";
    }
}
