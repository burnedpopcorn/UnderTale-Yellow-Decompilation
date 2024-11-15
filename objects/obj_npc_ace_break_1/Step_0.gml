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
            prt[0] = 439;
            prt[1] = 437;
            prt[2] = 436;
            prt[3] = 435;
            prt[4] = 436;
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
            prt[0] = 437;
            prt[1] = 439;
            prt[2] = 436;
        }
        
        global.dunes_flag_ext[2] = 2;
        break;
    
    case 2:
        with (msg)
        {
            talker[0] = other.object_index;
            portrait = false;
            sndfnt = 99;
            message[0] = "* I'd rather be left#  alone.";
            prt[0] = 437;
        }
        
        break;
}
