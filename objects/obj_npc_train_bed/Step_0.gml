event_inherited();

if (interact)
{
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                talker[0] = other.object_index;
                message[0] = "* Oh hey, you're the human Star#  brought to town.";
                message[1] = "* Apologies if I scared ya' back#  there.";
                message[2] = "* You see, I'm the onl-... best#  actor in all of the Wild East.";
                message[3] = "* I warned Star I'd go all in.#  Poor Ed must have#  been TERRIFIED.";
                
                if (global.dunes_flag[23] == true)
                    message[3] = "* I warned Star I'd go all in.#  Poor townsfolk must have#  been TERRIFIED.";
            }
            
            npc_flag++;
            break;
        
        case 1:
            with (msg)
            {
                talker[0] = other.object_index;
                message[0] = "* You're probably thinking I hurt#  myself when I fell over...";
                message[1] = "* Nope. I'm here cause I can't#  get this darn costume off.";
            }
            
            npc_flag++;
            break;
        
        case 2:
            with (msg)
            {
                talker[0] = other.object_index;
                message[0] = "* Sorry kid, if you want an#  autograph now is really not the#  best time.";
            }
            
            break;
    }
}
