event_inherited();

if (global.dunes_flag_ext[2] < 3)
    global.dunes_flag_ext[2] = 3;

if (!interact)
    exit;

scr_text();

switch (global.dunes_flag_ext[2])
{
    case 3:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* I think a \"thank you\" is#  in order.";
            message[1] = "* You just received some#  high-tier gifts. For#  free, no less.";
            message[2] = "* I do have an eye for#  that sort of thing.";
            prt[0] = spr_portrait_ace_stern;
            prt[1] = spr_portrait_ace_stern;
            prt[2] = spr_portrait_ace_smile;
        }
        
        global.dunes_flag_ext[2] = 4;
        break;
    
    case 4:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Don't get the impression#  that I'm opening up or#  anything.";
            message[1] = "* It takes a long time for#  me to become \"buddy#  buddy\" with someone.";
            prt[0] = spr_portrait_ace_concealed;
            prt[1] = spr_portrait_ace_hand;
        }
        
        global.dunes_flag_ext[2] = 5;
        break;
    
    case 5:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* ...";
            prt[0] = spr_portrait_ace_concealed;
        }
        
        break;
}
