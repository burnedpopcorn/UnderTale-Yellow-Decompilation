event_inherited();

if (!interact)
    exit;

scr_text();

switch (global.dunes_flag_ext[1])
{
    case 0:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* What's up?";
            message[1] = "* ...";
            message[2] = "* Umm... About Martlet.";
            message[3] = "* I totally get why you'd#  be upset but I can#  explain... I think.";
            message[4] = "* See, if she IS a Royal#  Guard, that would cause#  problems.";
            message[5] = "* She threatened to report#  Star to King ASGORE!";
            message[6] = "* One thing leads to#  another and the Wild#  East is in flames!";
            message[7] = "* Well... maybe.";
            message[8] = "* I'm sure ASGORE would#  understand but there are#  others...";
            message[9] = "* The head of the Royal#  Guard, particularly.";
            message[10] = "* Hopefully you didn't#  have a run-in with her.";
            message[11] = "* I mean, I've never met#  her. I've just heard we#  look alike.";
            prt[0] = 445;
            prt[1] = 449;
            prt[2] = 446;
            prt[3] = 449;
            prt[4] = 449;
            prt[5] = 450;
            prt[6] = 449;
            prt[7] = 449;
            prt[8] = 449;
            prt[9] = 447;
            prt[10] = 449;
            prt[11] = 445;
        }
        
        global.dunes_flag_ext[1] = 1;
        break;
    
    case 1:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Don't worry!";
            message[1] = "* It's super fun here, I#  promise!";
            prt[0] = 445;
            prt[1] = 445;
        }
        
        break;
}
