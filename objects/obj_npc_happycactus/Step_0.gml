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
                message[0] = "* This town is quite the#  spectacle, is it not?";
                message[1] = "* Ah ha! I would bury myself in#  its sand if I could, yep yep!";
            }
            
            npc_flag++;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Have you met my cousin over by#  the Oasis?";
                message[1] = "* What a sad sight, boo hoo.";
                message[2] = "* What he needs is a visit to the#  Wild East, he does!";
                message[3] = "* Lifts the spirit right up, oh#  yes!";
            }
            
            npc_flag++;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* That other fellow near the#  well? Oh ho! I do not know them.";
                message[1] = "* Lying around in this heat will#  dry you out, I say!";
            }
            
            npc_flag++;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* I hope you have a#  wonderfully-happy-go time here!";
                message[1] = "* Ah ha! Oh yes! I'm sure you#  will!";
            }
            
            break;
    }
}
