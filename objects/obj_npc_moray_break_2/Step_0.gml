event_inherited();

if (global.dunes_flag_ext[1] < 2)
    global.dunes_flag_ext[1] = 2;

if (!interact)
    exit;

scr_text();

switch (global.dunes_flag_ext[1])
{
    case 2:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Oh, hey.";
            message[1] = "* I'm in here to give#  Martlet some food,#  that's all.";
            message[2] = "* ...It isn't meal time#  but I thought she would#  enjoy something.";
            message[3] = "* So... you don't need to#  worry about her.";
            message[4] = "* I'll make sure she's#  treated as well as one#  in jail can be.";
            message[5] = "* This is for the best.";
            prt[0] = 445;
            prt[1] = 445;
            prt[2] = 449;
            prt[3] = 445;
            prt[4] = 445;
            prt[5] = 449;
        }
        
        global.dunes_flag_ext[1] += 1;
        break;
    
    case 3:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Look on the bright side!";
            message[1] = "* Things are about to ramp#  up!";
            message[2] = "* Soon, you'll be one of#  us. How exciting!";
            prt[0] = 445;
            prt[1] = 445;
            prt[2] = 445;
        }
        
        break;
}
