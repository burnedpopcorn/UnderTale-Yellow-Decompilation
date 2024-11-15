event_inherited();

if (global.dunes_flag_ext[0] < 3)
    global.dunes_flag_ext[0] = 3;

if (!interact)
    exit;

scr_text();

switch (global.dunes_flag_ext[0])
{
    case 3:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Missions here can be#  real tiring.";
            message[1] = "* That's why we have a#  designated nap time!";
            message[2] = "* It's a good way to#  recharge for future#  servings of justice!";
            message[3] = "* Now that I think about#  it, nap time should be#  after this next mission.";
            message[4] = "* Hope you join us!";
            prt[0] = 455;
            prt[1] = 458;
            prt[2] = 462;
            prt[3] = 455;
            prt[4] = 462;
        }
        
        global.dunes_flag_ext[0] += 1;
        break;
    
    case 4:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* What?";
            message[1] = "* I don't search through#  my friends' belongings#  while they nap.";
            message[2] = "* Why would you suggest#  such a thing? I have#  SOME restraint!";
            message[3] = "* Oh... You didn't say#  anything.";
            message[4] = "* ...";
            message[5] = "* This conversation didn't#  happen, got that?";
            prt[0] = 455;
            prt[1] = 460;
            prt[2] = 460;
            prt[3] = 456;
            prt[4] = 455;
            prt[5] = 455;
        }
        
        global.dunes_flag_ext[0] += 1;
        break;
    
    case 5:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Naps naps naps!";
            message[1] = "* Gotta love 'em!";
            prt[0] = 458;
            prt[1] = 462;
        }
        
        break;
}
