event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
                message[0] = "* (Watch your step! A posse of#  Micro Froggits are camping#  out.)";
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* (The Micro Froggits are#  arguing over the political#  strife of the Underground.)";
                message[1] = "* (A mini-bar fight ensues!)";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* (The head of the party calms#  the rest down, reminding them#  of their strong brotherhood.)";
                message[1] = "* (The Micro Froggits hug it#  out, settling their#  differences...)";
                message[2] = "* (...Because at the end of the#  day, they're all just tiny#  frogs in a great big world.)";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
            {
                message[0] = "* (This town IS big enough for#  the six of them.)";
                message[1] = "* (Too big.)";
            }
            
            break;
    }
}
