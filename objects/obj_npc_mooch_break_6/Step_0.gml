event_inherited();

if (global.dunes_flag_ext[0] < 6)
    global.dunes_flag_ext[0] = 6;

if (!interact)
    exit;

scr_text();

switch (global.dunes_flag_ext[0])
{
    case 6:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Hey Clover.";
            message[1] = "* Sorry we kinda ruined#  your fun.\t";
            message[2] = "* It really wasn't your#  fault, you were just#  strung along.\t";
            message[3] = "* Anyway... I feel bad#  about the whole thing.\t";
            message[4] = "* Need to talk to Star#  about it as soon as#  possible.";
            prt[0] = spr_portrait_mooch_smile;
            prt[1] = spr_portrait_mooch_normal;
            prt[2] = spr_portrait_mooch_normal;
            prt[3] = spr_portrait_mooch_normal;
            prt[4] = spr_portrait_mooch_normal;
        }
        
        global.dunes_flag_ext[0] += 1;
        break;
    
    case 7:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* The others needed a#  little more time.";
            message[1] = "* I might've... snuck#  away while they were#  occupied.";
            message[2] = "* It's what I do best!#  Heh heh...";
            prt[0] = spr_portrait_mooch_normal;
            prt[1] = spr_portrait_mooch_smirk;
            prt[2] = spr_portrait_mooch_smirk;
        }
        
        global.dunes_flag_ext[0] += 1;
        break;
    
    case 8:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* I won't blame you if#  you wanna ditch this#  town.";
            message[1] = "* Hope you had a decent#  time, though!";
            message[2] = "* Ya know... before#  everything.";
            prt[0] = spr_portrait_mooch_normal;
            prt[1] = spr_portrait_mooch_normal;
            prt[2] = spr_portrait_mooch_normal;
        }
        
        break;
}
