event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    if (global.dunes_flag[24] == 1)
    {
        switch (npc_flag)
        {
            case 0:
                with (msg)
                {
                    portrait = false;
                    sndfnt = sndfnt_default;
                    message[0] = "* Yo, exciting news.";
                    message[1] = "* I just built myself a new#  computer and guess what?";
                    message[2] = "* You can play GAMES on it!";
                    message[3] = "* Sorry North Star but I'm never#  leaving my room again!!!";
                }
                
                npc_flag += 1;
                break;
            
            case 1:
                with (msg)
                {
                    portrait = false;
                    sndfnt = sndfnt_default;
                    message[0] = "* There's these videos on#  Undernet of monsters playing#  Love Blaster.";
                    message[1] = "* I'll tell ya what, they're#  playing it all wrong!";
                    message[2] = "* You're supposed to GRAB the#  powerups, not avoid them!!";
                    message[3] = "* Also, Mew mew doesn't \"shoot#  bullets\", she spreads joy.";
                    message[4] = "* It's so obvious they haven't#  studied the deep lore like I#  have.";
                }
                
                npc_flag += 1;
                break;
            
            case 2:
                with (msg)
                {
                    portrait = false;
                    sndfnt = sndfnt_default;
                    message[0] = "* You should come over#  sometime.";
                    message[1] = "* We could play a co-op game!";
                }
                
                break;
        }
    }
    else if (global.dunes_flag[24] == 2)
    {
        switch (npc_flag)
        {
            case 0:
                with (msg)
                {
                    portrait = false;
                    sndfnt = sndfnt_default;
                    message[0] = "* Yo, exciting news.";
                    message[1] = "* I just built myself a new#  computer and guess what?";
                    message[2] = "* You can play GAMES on it!";
                    message[3] = "* Isn't that awesome???";
                    message[4] = "* Why don't you look excited?";
                    message[5] = "* ...Alright then, sorry I#  brought it up.";
                }
                
                npc_flag += 1;
                break;
            
            case 1:
                with (msg)
                {
                    portrait = false;
                    sndfnt = sndfnt_default;
                    message[0] = "* Forget about the game stuff.";
                    message[1] = "* I'm more of a single-player#  type anyway.";
                }
                
                break;
        }
    }
}
