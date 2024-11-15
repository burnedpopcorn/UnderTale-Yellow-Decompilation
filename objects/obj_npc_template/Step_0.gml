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
                portrait = false;
                sndfnt = 99;
                message[0] = "* I read something in a book once.";
                message[1] = "* It said, \"If life comes at you#  too fast, press X and take it#  slow.\"";
                message[2] = "* Whatever that means.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* You know, I read something else#  in that same book.";
                message[1] = "* It said, \"Eat food to stay#  strong and healthy!\"";
                message[2] = "* That one is plain obvious.";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Wanna know another excerpt from#  that book?";
                message[1] = "* It said, \"Please stop talking#  to me, I've exhausted my book#  quotes.\"";
                message[2] = "* A very wise book, indeed.";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Please leave me alone.";
            }
    }
}
