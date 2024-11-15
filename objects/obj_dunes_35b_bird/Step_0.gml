event_inherited();
depth = -140;

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                message[0] = "* I remember this game working#  more efficiently in the past.";
                message[1] = "* The air pressure seems to have#  been tampered with or something.";
                message[2] = "* Considering this table doubles#  as the AC, that ain't good news.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                message[0] = "* This is the only place that#  keeps up on modern trends#  in the Dunes.";
                message[1] = "* How do monsters live without#  good ol' electricity?";
                message[2] = "* Especially those Wild East#  folk!";
                message[3] = "* That life ain't for me.";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                message[0] = "* By the way, I've heard talks#  of reforesting the Dunes#  lately.";
                message[1] = "* I don't know how but#  I'm rootin' for it!";
            }
            
            break;
    }
}
