event_inherited();
depth = -room_height;

if (interact)
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* WAM! What's up?";
                message[1] = "* You're probably wondering why#  I'm here, right?";
                message[2] = "* Surely a monster of my status#  should always be out there#  hustling!";
                message[3] = "* Well, here's a tip from a pro:";
                message[4] = "* Always be your own boss!";
                message[5] = "* If you ever feel like you need#  a break, take the opportunity.";
                message[6] = "* I'm always traveling back and#  forth, making dough, being cool,#  etc.";
                message[7] = "* It's an exhausting life, am I#  wrong?";
                ch_msg = 7;
                ch[1] = "It's easy";
                ch[2] = "You're right";
                
                if (outcome == 1)
                {
                    message[8] = "* Oooh, I seee.";
                    message[9] = "* You think it's easy?";
                    message[10] = "* Well... it kinda is, not gonna#  lie!";
                }
                
                if (outcome == 2)
                {
                    message[8] = "* Ain't I always?";
                    message[9] = "* ...";
                    message[10] = "* That's rhetorical.";
                }
                
                message[11] = "* Look, moral of the story is,#  don't overwork yourself, eh?";
                message[12] = "* That's about as wise as I get.#  Don't get used to it!";
            }
            
            if (!global.dialogue_open)
                npc_flag += 1;
            
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* The products here are decent#  but come on, mine are so much#  better.";
                message[1] = "* Never settle for the#  mass-produced stuff!";
                message[2] = "* Can't say that too loudly or#  the bartender will hit me, haha.";
            }
            
            if (!global.dialogue_open)
                npc_flag += 1;
            
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* You know, I probably shouldn't#  be here.";
                message[1] = "* I really should be saving my#  G's every chance I get.";
                message[2] = "* Debt is an aggressive thing!";
                message[3] = "* ...";
                message[4] = "* Ahh, I'm just yanking your#  chain like always!";
                message[5] = "* You know ol' Mo!";
            }
            
            if (!global.dialogue_open)
                npc_flag += 1;
            
            break;
        
        case 3:
            with (msg)
            {
                message[0] = "* Hopefully our paths cross soon!";
                message[1] = "* I have ideas for some bangin'#  new products!";
            }
            
            break;
    }
}

if (!global.dialogue_open && waiter == 1)
    waiter = 0;
