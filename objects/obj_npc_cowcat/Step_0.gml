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
                sndfnt = sndfnt_default;
                message[0] = "* Howdy...";
                message[1] = "* You got any of that...";
                message[2] = "* Any of that good catnip?";
                message[3] = "* I've been dying to try some...";
                message[4] = "* ...IS WHAT I WOULD SAY IF I#  WERE A DIRTY BANDIT!!";
                message[5] = "* Nyahaha! You were almost#  tricked!";
                message[6] = "* I coulda caught'cha and turned#  you in to the Feisty Five!";
                message[7] = "* Nyahaha! Be more careful,#  partner!";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* The fact you didn't fall for my#  trap is pretty neato.";
                message[1] = "* Maybe you'll fit in 'round here#  better than I thought.";
                message[2] = "* Unless you're a bandit in#  disguise???";
                message[3] = "* Nyahaha! I'm only joshin',#  partner!";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Ain't no place like the Wild#  East, I'll tell ya that!";
            }
            
            break;
    }
}
