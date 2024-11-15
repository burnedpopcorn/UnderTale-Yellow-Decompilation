event_inherited();

if (interact)
{
    scr_text();
    
    if (global.party_member != -4 && global.dunes_flag[41] > 0)
    {
        with (msg)
        {
            sndfnt = 102;
            message[0] = "* (We need to stay#  focused.)";
            message[1] = "* (Let's not bother others#  with our problems.)";
            prt[0] = 321;
            prt[1] = 338;
        }
        
        exit;
    }
    
    is_talking = 1;
    
    with (msg)
    {
        switch (other.npc_flag)
        {
            case 0:
                message[0] = "* Hey, dude.";
                message[1] = "* I know you'll say no, but I'm#  selling free hugs.";
                message[2] = "* Darn it, you already read my#  sign, didn't you?";
                message[3] = "* I hate myself.";
                break;
            
            case 1:
                message[0] = "* No, don't bother asking.";
                message[1] = "* I'm closing shop, okay?";
                message[2] = "* This was a dumb idea.";
                message[3] = "* Even if you did hug me, which#  would be sick, I'd probably#  kill you.";
                message[4] = "* Not intentionally, of course.#  That'd be a crime, and I hate#  crime.";
                message[5] = "* Oh great. You might be a#  criminal and now you definitely#  won't hug me.";
                message[6] = "* Just walk away. It would be#  better for both of us.";
                break;
            
            case 2:
                message[0] = "* You still want a hug?";
                message[1] = "* Bro, you need to learn when to#  let go.";
                message[2] = "* If you won't leave me alone,#  the hugs are no longer free.";
                message[3] = "* In fact, they are very#  expensive hugs.";
                message[4] = "* Whatever amount of money you#  own? They're like, triple that.";
                message[5] = "* I'm honestly not sorry.";
                break;
            
            case 3:
                message[0] = "* Okay, I KINDA still want a hug#  but I'm in this way too deep.";
                message[1] = "* Ignore my existence, please.";
                break;
        }
    }
    
    if (npc_flag < 3)
        npc_flag++;
}
