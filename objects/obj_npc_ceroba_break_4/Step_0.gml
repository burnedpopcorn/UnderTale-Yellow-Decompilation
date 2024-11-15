event_inherited();

if (!interact)
    exit;

if (global.dunes_flag_ext[6] < 3)
    global.dunes_flag_ext[6] = 3;

scr_text();

switch (global.dunes_flag_ext[6])
{
    case 3:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Hm?";
            message[1] = "* Oh, it's you.";
            message[2] = "* Sorry, I was just#  looking at Star's#  videotapes.";
            message[3] = "* Mostly human-made#  westerns that found#  their way here.";
            message[4] = "* That and the classic#  \"Aerobics 4 Five.\" That#  one gets used often.";
            message[5] = "* Man, these really take#  me back.";
            message[6] = "* I remember the day Star#  ran from Waterfall with#  these in his arms.";
            message[7] = "* He was ecstatic. I#  recall it being strange#  to see him act that way.";
            message[8] = "* He must've watched them#  all forward and backward,#  fifty times over.";
            message[9] = "* When Kanako came around,#  he'd watch them with her#  just as mu..";
            message[10] = "* ...";
            message[11] = "* Uh-yeah. They're good#  movies. That's what I'm#  getting at.";
            prt[0] = 370;
            prt[1] = 372;
            prt[2] = 370;
            prt[3] = 370;
            prt[4] = 372;
            prt[5] = 394;
            prt[6] = 370;
            prt[7] = 372;
            prt[8] = 377;
            prt[9] = 394;
            prt[10] = 370;
            prt[11] = 372;
        }
        
        global.dunes_flag_ext[6] = 4;
        break;
    
    case 4:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* I um... I have a habit#  of drowning in nostalgia#  from time to time.";
            message[1] = "* I apologize. It's super#  cheesy, I'm sure.";
            message[2] = "* It just... helps. To#  remember the good times.";
            message[3] = "* It helps.";
            prt[0] = 388;
            prt[1] = 394;
            prt[2] = 370;
            prt[3] = 377;
        }
        
        global.dunes_flag_ext[6] = 5;
        break;
    
    case 5:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Get out of my hair#  before you die of#  melodrama, will you?";
            message[1] = "* I'm fine, trust me.";
            message[2] = "* You need to focus on#  passing your training. ";
            prt[0] = 377;
            prt[1] = 394;
            prt[2] = 372;
        }
        
        global.dunes_flag_ext[6] = 6;
    
    case 6:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* You should get going.#  You don't wanna miss#  your next mission.";
            prt[0] = 394;
        }
        
        break;
}
