event_inherited();

if (!interact)
    exit;

scr_text();

switch (npc_flag)
{
    case 0:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Hey, kid.";
            message[1] = "* Glad you decided to#  come back.";
            message[2] = "* The last time we saw#  each other wasn't too#  pretty, heh.";
            message[3] = "* Uh, what I'm gettin' at#  is...";
            message[4] = "* Sorry for all those#  hurtful things I said.";
            message[5] = "* My temper gets the best#  of me sometimes...";
            message[6] = "* Trying to work on it.";
            prt[0] = 451;
            prt[1] = 452;
            prt[2] = 454;
            prt[3] = 451;
            prt[4] = 454;
            prt[5] = 452;
            prt[6] = 451;
        }
        
        npc_flag = 1;
        break;
    
    case 1:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Doesn't Moray sound#  great?";
            message[1] = "* I tried to learn the#  guitar once but my#  fingers were too large.";
            message[2] = "* Just one covered all#  six strings.";
            message[3] = "* Still, I do enjoy the#  instrument.\t";
            message[4] = "* Maybe someone could#  build a guitar big#  enough for me?";
            message[5] = "* One day, kid. One day.";
            prt[0] = 452;
            prt[1] = 453;
            prt[2] = 454;
            prt[3] = 452;
            prt[4] = 451;
            prt[5] = 451;
        }
        
        npc_flag = 2;
        break;
    
    case 2:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Ya know... I guess you#  do make a pretty good#  deputy.\t";
            message[1] = "* Good luck, wherever you#  go next.";
            prt[0] = 454;
            prt[1] = 451;
        }
        
        break;
}

if (ds_map_find_value(global.npc_map, npc_id) != npc_flag)
    ds_map_replace(global.npc_map, npc_id, npc_flag);
