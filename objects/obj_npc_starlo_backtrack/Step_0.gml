event_inherited();

if (!interact)
    exit;

scr_text();

switch (npc_flag)
{
    case 0:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* DEPUTY!!!";
            message[1] = "* Howdy!";
            message[2] = "* I am ever so delighted#  that you returned.";
            message[3] = "* ...Makes my parting#  letter a bit awkward but#  hey, s'all good!";
            prt[0] = 422;
            prt[1] = 417;
            prt[2] = 417;
            prt[3] = 415;
        }
        
        npc_flag = 1;
        break;
    
    case 1:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Don't ya have important#  places to be?";
            message[1] = "* I mean, I'm flattered#  you wanted to see me#  but...";
            message[2] = "* I already said goodbye!";
            message[3] = "* Now I gotta go through#  the feisty five stages#  of grief AGAIN!";
            prt[0] = 417;
            prt[1] = 415;
            prt[2] = 417;
            prt[3] = 420;
        }
        
        npc_flag = 2;
        break;
    
    case 2:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Now that I think about#  it...";
            message[1] = "* ...The trail up ahead#  must be pretty scary.";
            message[2] = "* Feel free to relax for#  a bit before you go!";
            message[3] = "* Moray's playin' a#  lovely set tonight.";
            message[4] = "* They have been on this#  particular tune for a#  while though...";
            prt[0] = 407;
            prt[1] = 418;
            prt[2] = 417;
            prt[3] = 415;
            prt[4] = 421;
        }
        
        npc_flag = 3;
        break;
    
    case 3:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Wish nothin' but the#  absolute best for ya,#  partner!";
            message[1] = "* Yeehaw!";
            prt[0] = 417;
            prt[1] = 422;
        }
        
        break;
}

if (ds_map_find_value(global.npc_map, npc_id) != npc_flag)
    ds_map_replace(global.npc_map, npc_id, npc_flag);
