event_inherited();

if (!interact)
    exit;

scr_text();

switch (global.dunes_flag_ext[2])
{
    case 0:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Hey.";
            message[1] = "* I don't know if you're#  aware of this but...";
            message[2] = "* There's a fun card game#  set up in the stable.";
            message[3] = "* My friend runs it while#  I oversee the... profits.";
            message[4] = "* You should try it out.";
            prt[0] = spr_portrait_ace_hand;
            prt[1] = spr_portrait_ace_concealed;
            prt[2] = spr_portrait_ace_smile;
            prt[3] = spr_portrait_ace_stern;
            prt[4] = spr_portrait_ace_smile;
        }
        
        global.dunes_flag_ext[2] = 1;
        break;
    
    case 1:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* To answer the pressing#  question:";
            message[1] = "* No, I won't take my#  bandana off.";
            message[2] = "* I enjoy being#  mysterious... and#  fashionable.";
            prt[0] = spr_portrait_ace_concealed;
            prt[1] = spr_portrait_ace_hand;
            prt[2] = spr_portrait_ace_smile;
        }
        
        global.dunes_flag_ext[2] = 2;
        break;
    
    case 2:
        with (msg)
        {
            talker[0] = other.object_index;
            portrait = false;
            sndfnt = sndfnt_default;
            message[0] = "* I'd rather be left#  alone.";
            prt[0] = spr_portrait_ace_concealed;
        }
        
        break;
}
