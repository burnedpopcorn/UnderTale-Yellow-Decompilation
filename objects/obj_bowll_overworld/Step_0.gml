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
                message[0] = "* I wish those miners would've#  told me about the boulder#  problem.";
                message[1] = "* I coulda charged right through#  'em, breaking into a million#  bits!";
                message[2] = "* Uh-breaking THEM into a#  million bits. Not me. Ahem.";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* I've learned a lot from being#  a clean boy.";
                message[1] = "* Mostly how absolutely#  disgusting the Dunes are.";
                message[2] = "* I mean, everything's covered#  in sand!";
                message[3] = "* Whoever built that giant fan#  needs to build a giant vacuum.";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* You're lucky that bandana#  you're wearing isn't red.";
                message[1] = "* We'd probably have issues,#  haha!";
            }
            
            npc_flag += 1;
            break;
        
        case 3:
            with (msg)
                message[0] = "* Never forget to sparkle out#  there!";
            
            break;
    }
}
