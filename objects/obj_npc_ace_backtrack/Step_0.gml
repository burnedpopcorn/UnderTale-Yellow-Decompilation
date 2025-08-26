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
            message[0] = "* Oh. It's you.";
            message[1] = "* ...";
            message[2] = "* ...";
            message[3] = "* ...What?";
            prt[0] = spr_portrait_ace_stern;
            prt[1] = spr_portrait_ace_concealed;
            prt[2] = spr_portrait_ace_concealed;
            prt[3] = spr_portrait_ace_hand;
        }
        
        npc_flag = 1;
        break;
    
    case 1:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* I'm trying to listen to#  my friend perform, if#  you don't mind.";
            message[1] = "* This song is one of my#  favorites but...";
            message[2] = "* I don't know how much#  longer Moray will be#  playing it.";
            message[3] = "* Not gonna spend its#  length chatting, sorry.";
            prt[0] = spr_portrait_ace_stern;
            prt[1] = spr_portrait_ace_concealed;
            prt[2] = spr_portrait_ace_concealed;
            prt[3] = spr_portrait_ace_hand;
        }
        
        npc_flag = 2;
        break;
    
    case 2:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* I don't wanna talk,#  alright?";
            message[1] = "* Just because you showed#  up and solved a#  problem...";
            message[2] = "* You think I should#  magically grow as a#  monster?";
            message[3] = "* Break out of my shell#  and \"complete my arc?\"";
            message[4] = "* Nah...";
            message[5] = "* Growth is for main#  characters like Star.";
            message[6] = "* I might be as 2D as my#  cards but hey, that's#  fine by me.";
            prt[0] = spr_portrait_ace_hand;
            prt[1] = spr_portrait_ace_concealed;
            prt[2] = spr_portrait_ace_stern;
            prt[3] = spr_portrait_ace_stern;
            prt[4] = spr_portrait_ace_concealed;
            prt[5] = spr_portrait_ace_concealed;
            prt[6] = spr_portrait_ace_hand;
        }
        
        npc_flag = 3;
        break;
    
    case 3:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* ...";
            prt[0] = spr_portrait_ace_concealed;
        }
        
        break;
}

if (ds_map_find_value(global.npc_map, npc_id) != npc_flag)
    ds_map_replace(global.npc_map, npc_id, npc_flag);
