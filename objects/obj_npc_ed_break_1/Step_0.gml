event_inherited();

if (!interact)
    exit;

scr_text();

switch (global.dunes_flag_ext[3])
{
    case 0:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Hey, kid.";
            message[1] = "* Sorry for bein' so#  forceful earlier. ";
            message[2] = "* I'm just doin' what Star#  thinks is best.";
            message[3] = "* This whole thing snuck#  up on us, that's for#  sure.";
            message[4] = "* I'm optimistic about it!";
            prt[0] = 451;
            prt[1] = 454;
            prt[2] = 451;
            prt[3] = 451;
            prt[4] = 452;
        }
        
        global.dunes_flag_ext[3] = 1;
        break;
    
    case 1:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Not to brag but I'm#  basically Star's#  right-hand man.";
            message[1] = "* I do all the heavy#  liftin' 'round here.";
            message[2] = "* Star just asks nicely#  and off I go.";
            message[3] = "* Ain't that a cool#  relationship?";
            prt[0] = 451;
            prt[1] = 451;
            prt[2] = 451;
            prt[3] = 452;
        }
        
        global.dunes_flag_ext[3] = 2;
        break;
    
    case 2:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* I'm sure you'll have a#  good time here.";
            message[1] = "* Lookin' forward to the#  trainin'!";
            prt[0] = 453;
            prt[1] = 454;
        }
        
        break;
}
