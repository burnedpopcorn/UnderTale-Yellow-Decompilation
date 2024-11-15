event_inherited();

if (interact == 1)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* Uh ! Uh ! What a s-s-sound !";
                message[1] = "* You hearing this, human ?";
                message[2] = "* Odd, a bit short, but#  endearing .";
                message[3] = "* Kinda like you !";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* Life wouldn't be the same#  without m-m-music !";
                message[1] = "* What's your favorite kind of#  music, huh ?";
                message[2] = "* Our listeners would love to#  kn-o-o-ow !";
                message[3] = "* [ANSWER HERE]";
                message[4] = "* Oh ! That's one of my#  favorites t-t-too !";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* Oh, yes, I forgot to mention#  that we are L-I-V-E live right#  now !";
                message[1] = "* We have a lovely audience#  tonight !";
                message[2] = "* Say \"hi\", audience ! !";
                message[3] = "* . .";
                message[4] = "* Must be a w-w-weak signal ? ?";
            }
            
            npc_flag += 1;
            break;
        
        case 3:
            with (msg)
                message[0] = "* You're listening to G-G-GOOSIC#  RADIO 108.1 - spinning 24/7 ! !";
            
            break;
    }
}
