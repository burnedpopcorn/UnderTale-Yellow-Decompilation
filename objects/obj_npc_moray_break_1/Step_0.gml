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
            prt[0] = spr_portrait_moray_normal;
            prt[1] = spr_portrait_moray_plain;
            prt[2] = spr_portrait_moray_downer;
            prt[3] = spr_portrait_moray_plain;
            prt[4] = spr_portrait_moray_plain;
            prt[5] = spr_portrait_moray_sweat;
            prt[6] = spr_portrait_moray_plain;
            prt[7] = spr_portrait_moray_plain;
            prt[8] = spr_portrait_moray_plain;
            prt[9] = spr_portrait_moray_disbelief;
            prt[10] = spr_portrait_moray_plain;
            prt[11] = spr_portrait_moray_normal;
        }
        
        global.dunes_flag_ext[1] = 1;
        break;
    
    case 1:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Don't worry!";
            message[1] = "* It's super fun here, I#  promise!";
            prt[0] = spr_portrait_moray_normal;
            prt[1] = spr_portrait_moray_normal;
        }
        
        break;
}
