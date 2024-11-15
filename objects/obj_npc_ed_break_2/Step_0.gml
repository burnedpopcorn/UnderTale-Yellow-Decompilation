event_inherited();

if (global.dunes_flag_ext[3] < 3)
    global.dunes_flag_ext[3] = 3;

if (!interact)
    exit;

scr_text();

switch (global.dunes_flag_ext[3])
{
    case 3:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* It's kinda irritatin'#  the last mission was#  postponed.";
            message[1] = "* It ain't like Star to#  overlook the dress#  conditions.";
            message[2] = "* I guess we can chalk it#  up to him havin' his#  plate full.";
            message[3] = "* I am surprised he#  got'cha such fancy#  upgrades.";
            message[4] = "* We didn't get that kinda#  stuff when we first#  joined.";
            prt[0] = 451;
            prt[1] = 453;
            prt[2] = 451;
            prt[3] = 451;
            prt[4] = 454;
        }
        
        global.dunes_flag_ext[3] += 1;
        break;
    
    case 4:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* No more shoppin' sprees,#  Clover!";
            message[1] = "* Next mission is sure to#  put you to the test!";
            prt[0] = 451;
            prt[1] = 452;
        }
        
        break;
}
