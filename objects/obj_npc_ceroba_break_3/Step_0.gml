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
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_disapproving;
            prt[2] = spr_portrait_ceroba_muttering;
            prt[3] = spr_portrait_ceroba_unamused;
            prt[4] = spr_portrait_ceroba_muttering;
            prt[5] = spr_portrait_ceroba_closed_eyes;
            prt[6] = spr_portrait_ceroba_neutral;
            prt[7] = spr_portrait_ceroba_neutral;
            prt[8] = spr_portrait_ceroba_disapproving;
            prt[9] = spr_portrait_ceroba_neutral;
            prt[10] = spr_portrait_ceroba_smile;
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
            prt[0] = spr_portrait_ceroba_default;
            prt[1] = spr_portrait_ceroba_default;
            prt[2] = spr_portrait_ceroba_closed_eyes;
            prt[3] = spr_portrait_ceroba_smile;
        }
        
        global.dunes_flag_ext[6] = 2;
        break;
    
    case 2:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* The sooner you do your#  missions, the sooner#  you're on your way.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
        }
        
        break;
}
