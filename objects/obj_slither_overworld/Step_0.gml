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
                message[0] = "* Hey, where are you off to,#  mate?";
                message[1] = "* Any space for a plus one?";
                message[2] = "* Just joking around of course!#  Heh...";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* I just... I think it would be#  NEAT if I could like...";
                message[1] = "* Join your party or...#  something.";
                message[2] = "* But I know you're busy and all#  - so am I!";
                message[3] = "* Things pile up, right? Life...";
                message[4] = "* 'Course,";
                message[5] = "* Your \"busy\" involves adventure#  and the discovery of wonderful#  treasures.";
                message[6] = "* My \"busy\" is more like making#  sure I don't miss my alimony#  payments.";
                message[7] = "* But nah it's cool... it's#  cool...";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* No need to stick around#  worrying about me!";
                message[1] = "* You can tell me all about your#  grand journey later.";
                message[2] = "* Maybe you could write a book#  about it? And I would like, be#  your editor?";
                message[3] = "* I don't know, just thinking#  out loud, heh...";
            }
            
            break;
    }
}
