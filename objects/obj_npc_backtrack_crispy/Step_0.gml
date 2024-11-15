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
                message[0] = "* I got to go back.";
                message[1] = "* I want to go back to the#  Ruins.";
                message[2] = "* The dump was a total bust!";
                message[3] = "* No anime to be found at ALL!";
                message[4] = "* Just like, eight identical#  piles of trash. It sucked!";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* In the Ruins, I could power up#  freely.";
                message[1] = "* No one minded me screaming#  down those purple halls.";
                message[2] = "* Out here, there's all these#  monsters just waiting to JUDGE#  me.";
                message[3] = "* Like, come on.";
                message[4] = "* I'm not \"disturbing the#  peace\", I'm becoming god.";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* Sorry for the attitude.";
                message[1] = "* The main character trait of my#  current power tier is \"easily#  pissed.\"";
                message[2] = "* Out of my control.";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* I bet some anime would help me#  unwind.";
                message[1] = "* There's this one show you#  should totally check out.";
                message[2] = "* It's over 1,000 episodes but#  I'm sure you could catch up#  within a few weeks.";
                message[3] = "* Just let me know and we'll#  begin the marathon!";
            }
            
            npc_flag = 4;
            break;
        
        case 4:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* We can talk more later.";
                message[1] = "* Right now, I gotta figure out#  where to begin my next arc.";
            }
            
            break;
    }
}
