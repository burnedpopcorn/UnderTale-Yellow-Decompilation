event_inherited();

if (interact && !can_talk)
{
    can_talk = true;
    is_talking = 1;
    scr_text();
}

if (can_talk)
{
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* What's up?";
                message[1] = "* You visiting, or are you lost?";
                ch_msg = 1;
                ch[1] = "Visiting";
                ch[2] = "I work here";
                
                if (outcome == 1)
                {
                    message[2] = "* Ah, well, there's not much to#  see.";
                    message[3] = "* The cave's a real mess.";
                    message[4] = "* She does contain some beautiful#  stones though, I'll tell you#  that!";
                    message[5] = "* Hope you enjoy your visit!";
                    other.can_talk = false;
                    other.npc_flag++;
                }
                
                if (outcome == 2)
                {
                    message[2] = "* Haha!";
                    message[3] = "* That's cute, but you can't pull#  one over on me!";
                    message[4] = "* The Foreman doesn't hire kids.";
                    message[5] = "* Though, several employees seem#  to have the brain of one.";
                    message[6] = "* I'm sorry! That was mean.";
                    message[7] = "* You're very smart, I'm sure.";
                    message[8] = "* Enjoy your visit!";
                    other.can_talk = false;
                    other.npc_flag++;
                }
            }
            
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* My job is to send all gemstones#  we find on this floor down to#  the sorting machine.";
                message[1] = "* From there... I'm not quite#  sure where they go.";
                message[2] = "* That's the problem with this#  place. You have to figure most#  things out yourself.";
                message[3] = "* It's an honest living, though!";
            }
            
            can_talk = false;
            npc_flag++;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* Oh, I know of a fun activity#  for you on your visit!";
                message[1] = "* There's a fortune teller set up#  in town.";
                message[2] = "* I visit her every week to hear#  about my potential future.";
                message[3] = "* Give her some business if you#  pass by the area, okay?";
            }
            
            can_talk = false;
            npc_flag++;
            break;
        
        case 3:
            with (msg)
            {
                message[0] = "* My break is almost over, it#  seems.";
                message[1] = "* Oh well.";
            }
            
            can_talk = false;
            break;
    }
}
