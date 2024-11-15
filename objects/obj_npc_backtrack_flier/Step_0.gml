event_inherited();

if (instance_exists(obj_dialogue) && obj_dialogue.talker_current == self)
{
    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
        sprite_index = spr_fliernpcfly;
    else
        sprite_index = spr_fliernpctalk;
}

if (!instance_exists(obj_dialogue))
    sprite_index = spr_fliernpcfly;

if (interact)
{
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* I basically helped Dalv move#  out all by myself.";
                message[1] = "* Soon as the exit to Snowdin#  was open, the others bolted.";
                message[2] = "* But not me. Nope.";
                message[3] = "* I'm loyal like that.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* Don't mean to bring the mood#  down but uh...";
                message[1] = "* The beach house I was eyeing?";
                message[2] = "* Down payment alone is like,#  100 G's.";
                message[3] = "* Not one-hundred G,#  one-hundred-GRAND.";
                message[4] = "* But yeah, no, I'm chill about#  it.";
                message[5] = "* Everyone knows the housing#  bubble is gonna burst.";
                message[6] = "* As soon as that happens, I am#  cleaning UP!";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* Heh, I do dabble in economics#  if you were wondering.";
                message[1] = "* Been hitting the market HARD#  lately.";
                message[2] = "* I got the sickest portfolio -#  you would believe it.";
                message[3] = "* Every stock I own is in rapid#  decline.";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* Life is genuinely good right#  now.";
                message[1] = "* Nowhere to go but up!";
            }
            
            break;
    }
}
