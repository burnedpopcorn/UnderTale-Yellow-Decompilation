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
                message[0] = "* Oh, hey there, kid!\t";
                message[1] = "* Thought I'd make somethin' of#  myself and get a real job.\t";
                message[2] = "* Despite playing a great#  bandit, Star doesn't actually#  pay anyone in town.\t";
                message[3] = "* Well, he lets the shopkeepers#  have most of their revenue but#  that's about it.\t";
                message[4] = "* Oh well, it was pretty fun#  while it lasted.";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* One day, you're gonna be in my#  situation.";
                message[1] = "* Forced to let go of childlike#  fantasy and tossed into#  adulthood.";
                message[2] = "* Hey, it sucks but everyone's#  gotta go through it.";
                message[3] = "* One thing though...";
                message[4] = "* Don't totally let go of your#  adventurous side.";
                message[5] = "* Some adults become far too#  cynical because they forget the#  good times.";
                message[6] = "* I should know, it's my first#  day here and I'm already hating#  my life!";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* Hang in there, Clover!\t";
                message[1] = "* You're gonna do great things!";
            }
            
            break;
    }
}
