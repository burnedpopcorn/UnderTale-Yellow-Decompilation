event_inherited();

if (interact)
{
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* Man, I don't know what's goin'#  on these days.";
                message[1] = "* Debt... Drama...";
                message[2] = "* When did this gang get so#  serious?";
                message[3] = "* Frankly...";
                message[4] = "* I liked it when we just played#  shuffle games with the#  residents.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* You wanna know my real dream?";
                message[1] = "* Bein' a bodyguard!";
                message[2] = "* For someone of status, of#  course.";
                message[3] = "* Keepin' watch while they carry#  out business... That sounds fun.";
                message[4] = "* I know I'd be a pro at it#  since I've been practicin' my#  pivot.";
                message[5] = "* No one could ever sneak by#  without my blinkers catchin'#  'em!";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* Don't worry about us.";
                message[1] = "* Best to leave this type-a#  business to the Shufflers.";
                message[2] = "* Yeah, Shufflers.";
                message[3] = "* ...";
                message[4] = "* Wait...";
            }
            
            break;
    }
}
