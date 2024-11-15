event_inherited();

if (interact == 1 && waiter == 0)
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                talker[0] = other;
                message[0] = "* Yo, how are'ya?";
                message[1] = "* Wait, are you from the Wild#  East? That's hilarious!";
                message[2] = "* Say \"howdy!\" Come on, DO IT!";
                ch_msg = 2;
                ch[1] = "Howdy!";
                ch[2] = "No way";
                
                if (outcome == 1)
                {
                    message[3] = "* PFFT! I LOVE IT!";
                    message[4] = "* What, you thought I was making#  fun of you?";
                    message[5] = "* Ha, no way! You're the most#  fun group of monsters around#  here.";
                    message[6] = "* Plus, you have a saloon.";
                    message[7] = "* ...What? I like the food#  there, that's all.";
                }
                
                if (outcome == 2)
                {
                    message[3] = "* BOOOO!";
                    message[4] = "* No real member of the Wild#  East would pass up a \"howdy.\"";
                    message[5] = "* You definitely don't get human#  culture.";
                }
                
                if (outcome != 0)
                {
                    other.npc_flag += 1;
                    other.waiter = 0;
                }
            }
            
            break;
        
        case 1:
            with (msg)
            {
                talker[0] = other;
                message[0] = "* Have you met my sisters?#  They're kinda annoying.";
                message[1] = "* Pedla's like, WAY too happy#  all the time.";
                message[2] = "* Just be normal and fake your#  happiness, like me!";
                message[3] = "* And Violetta? I'm not sure.";
                message[4] = "* I think all she needs is to#  find love or something.";
                message[5] = "* Like, get out there, girl!";
            }
            
            npc_flag += 1;
            waiter = 0;
            break;
        
        case 2:
            with (msg)
            {
                talker[0] = other;
                message[0] = "* I got work to do so I'll see#  ya.";
                message[1] = "* Remember to eat your veggies,#  stay hydrated, and say \"howdy\"#  more often.";
                message[2] = "* That's very important.";
            }
            
            waiter = 0;
            break;
    }
}
