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
                message[0] = "* bot fact:";
                message[1] = "* \"bots all have a passion for#  something. a programmed#  fixation.\"";
                message[2] = "* for example, i'm a huge fan of#  arson.";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* bot fact:";
                message[1] = "* \"bots are not allowed to#  swear. it is indecent and#  rude.\"";
                message[2] = "* alas, i am cursed to this#  family friendly environment.";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* bot fact:";
                message[1] = "* \"bots are not allowed to#  engage in romantic#  relationships.";
                message[2] = "* it would run the risk of#  bypassing the sentience#  suppression system.\"";
                message[3] = "* ...what does \"romantic#  relationships\" mean?";
                message[4] = "* why can't we interact with#  friendly boats from the roman#  empire?";
            }
            
            npc_flag += 1;
            break;
        
        case 3:
            with (msg)
            {
                message[0] = "* i only memorized three bot#  facts.";
                message[1] = "* anything i say now would only#  be bot fiction.";
            }
            
            break;
    }
}
