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
                sndfnt = sndfnt_default;
                talker[0] = other;
                message[0] = "* Is that a new hat?";
                message[1] = "* Love it!";
                message[2] = "* Average eyes probably couldn't#  tell it changed but my eyes are#  anything but!";
                message[3] = "* For starters, I can't blink!";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                talker[0] = other;
                message[0] = "* I think I settled on a goal#  for my journey.";
                message[1] = "* I wish to become the King's#  tailor!";
                message[2] = "* Yes, you heard that right!";
                message[3] = "* His look, his whole presence,#  it's nothing short of iconic!";
                message[4] = "* Oh the cloaks I could craft...";
                message[5] = "* He's already a ten out of ten#  but hey, we can shoot for#  eleven, baby!";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                talker[0] = other;
                message[0] = "* I find this resort so quaint,#  don't you agree?";
                message[1] = "* Tying the wooden aesthetic#  together with bears and honey?";
                message[2] = "* Splendid!";
                message[3] = "* The whole place really says#  \"We love you and would never#  maul you.\"";
                message[4] = "* A real victory over bear#  prejudice.";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                talker[0] = other;
                message[0] = "* Oh, right! My complexion.";
                message[1] = "* What can I say?";
                message[2] = "* I'm not a fan of baby blue.";
            }
            
            npc_flag = 4;
            break;
        
        case 4:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                talker[0] = other;
                message[0] = "* Knock 'em dead out there!";
                message[1] = "* Figuratively.";
            }
            
            break;
    }
}
