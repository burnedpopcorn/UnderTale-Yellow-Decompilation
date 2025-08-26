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
            message[0] = "* Clover? You're back?";
            message[1] = "* Um...";
            message[2] = "* I appreciate you#  thinking of us but...";
            message[3] = "* You should go.";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_alt;
            prt[2] = spr_portrait_ceroba_neutral;
            prt[3] = spr_portrait_ceroba_closed_eyes;
        }
        
        npc_flag = 1;
        break;
    
    case 1:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Sorry, I don't mean to#  be rude. It's just a#  personal situation.";
            message[1] = "* I've found a road to#  contentment in this#  group...";
            message[2] = "* I don't want to be#  given false hope and#  slip back into...";
            message[3] = "* ...";
            message[4] = "* Nevermind.";
            prt[0] = spr_portrait_ceroba_disapproving;
            prt[1] = spr_portrait_ceroba_closed_eyes;
            prt[2] = spr_portrait_ceroba_neutral;
            prt[3] = spr_portrait_ceroba_alt;
            prt[4] = spr_portrait_ceroba_disapproving;
        }
        
        npc_flag = 2;
        break;
    
    case 2:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Not sure if you#  received it, but I sent#  you a letter.";
            message[1] = "* Maybe you being here is#  a response to my request#  but...";
            message[2] = "* Please leave us be.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_neutral;
            prt[2] = spr_portrait_ceroba_disapproving;
        }
        
        npc_flag = 3;
        break;
    
    case 3:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* ...";
            prt[0] = spr_portrait_ceroba_disapproving;
        }
        
        break;
}

if (ds_map_find_value(global.npc_map, npc_id) != npc_flag)
    ds_map_replace(global.npc_map, npc_id, npc_flag);
