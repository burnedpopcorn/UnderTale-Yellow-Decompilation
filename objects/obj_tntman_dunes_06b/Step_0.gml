event_inherited();

if (interact)
{
    scr_text();
    is_talking = true;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* I entered this cave to find#  treasure but I found these#  fellas instead.\t";
                message[1] = "* They hopped up to me and#  now... I guess we're buddies?\t";
                message[2] = "* Is that how that works???\t";
                message[3] = "* In any case, nice.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* If there's any treasure#  around, you can have it.\t";
                message[1] = "* I think these funky frogs are#  all I need now.\t";
                message[2] = "* Oh, and my brother, I guess.#  He's okay.";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Sometimes, happiness is just a#  couple of pals chilling in a#  cave.\t";
                message[1] = "* Other times, it's more#  complicated.\t";
                message[2] = "* Mine is definitely the former#  cause I can't even spell the#  word complicated! ";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* On your way out, say hi to my#  brother for me, eh?";
            }
            
            break;
    }
}
