event_inherited();

if (!interact)
    exit;

scr_text();

switch (global.dunes_flag_ext[6])
{
    case 0:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* I have to say, it's fun#  watching the five's#  missions.";
            message[1] = "* Can't say the same for#  rooming with them.";
            message[2] = "* All six of us sleep in#  one room.";
            message[3] = "* Any annoyance you can#  think of? It happens.";
            message[4] = "* Snoring, sleep talking,#  teeth grinding... it's#  pretty exhausting.";
            message[5] = "* I can't complain much,#  though. It's a free#  place to stay.";
            message[6] = "* You see, in the past, I#  haven't lived here.";
            message[7] = "* I have... well, had a#  place near Oasis Valley.";
            message[8] = "* I suppose I outgrew it...#  moved here a few weeks#  back.";
            message[9] = "* Star and I have been#  friends since childhood,#  so there's no rent.";
            message[10] = "* It's nice...";
            prt[0] = 370;
            prt[1] = 394;
            prt[2] = 382;
            prt[3] = 384;
            prt[4] = 382;
            prt[5] = 377;
            prt[6] = 370;
            prt[7] = 370;
            prt[8] = 394;
            prt[9] = 370;
            prt[10] = 372;
        }
        
        global.dunes_flag_ext[6] = 1;
        break;
    
    case 1:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* About leaving:";
            message[1] = "* Once you pass your#  training, you'll be#  free to roam wherever.";
            message[2] = "* It'll be tough when I#  have to tell Star about#  your departure.";
            message[3] = "* He's taken a real liking#  to you. Shame you'll be#  gone so soon...";
            prt[0] = 375;
            prt[1] = 375;
            prt[2] = 377;
            prt[3] = 372;
        }
        
        global.dunes_flag_ext[6] = 2;
        break;
    
    case 2:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* The sooner you do your#  missions, the sooner#  you're on your way.";
            prt[0] = 377;
        }
        
        break;
}
