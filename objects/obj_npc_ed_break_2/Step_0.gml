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
            prt[0] = spr_portrait_ed_normal;
            prt[1] = spr_portrait_ed_mad;
            prt[2] = spr_portrait_ed_normal;
            prt[3] = spr_portrait_ed_normal;
            prt[4] = spr_portrait_ed_mutter;
        }
        
        global.dunes_flag_ext[3] += 1;
        break;
    
    case 4:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* No more shoppin' sprees,#  Clover!";
            message[1] = "* Next mission is sure to#  put you to the test!";
            prt[0] = spr_portrait_ed_normal;
            prt[1] = spr_portrait_ed_smile;
        }
        
        break;
}
