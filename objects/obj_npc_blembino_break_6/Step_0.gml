event_inherited();

if (interact == true)
{
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                talker[0] = other.object_index;
                message[0] = "* Leave me alone. I've had#  ENOUGH of this town.";
                message[1] = "* I swear, no one here really#  gets me. ";
                message[2] = "* No, they don't UNDERSTAND the#  level I'm at.";
                message[3] = "* I can stare at someone and#  they'll feel true fear.";
                message[4] = "* Well... not everyone...";
            }
            
            npc_flag++;
            break;
        
        case 1:
            with (msg)
            {
                talker[0] = other.object_index;
                message[0] = "* \"If you think you're so tough,#  why don't you prove it\" he#  said.";
                message[1] = "* Alright yeah, maybe I#  misjudged how strong a left#  hook to the cheek could be.";
                message[2] = "* Yeah, maybe I should've taken#  on someone smaller, but it's#  all part of my plan.";
                message[3] = "* I wasn't even using all my#  power... ";
            }
            
            npc_flag++;
            break;
        
        case 2:
            with (msg)
            {
                talker[0] = other.object_index;
                message[0] = "* Big red guy... and his dumb,#  stupid, little hat...";
                message[1] = "* Trust me, if i had landed the#  first hit things would've ended#  MUCH differently.";
                message[2] = "* He got lucky...";
            }
            
            npc_flag++;
            break;
        
        case 3:
            with (msg)
                message[0] = "* Go away.";
            
            break;
    }
}
