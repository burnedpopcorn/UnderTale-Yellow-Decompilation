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
                sndfnt = 99;
                message[0] = "* Hello, darling! How are you#  doin' today?";
                message[1] = "* It's a lovely day, ain't it?";
                message[2] = "* Is it always this hot n' humid,#  ya think?";
                message[3] = "* I just moved here from Snowdin,#  so I'm not sure yet.";
                message[4] = "* But a local like you would know,#  right?";
                message[5] = "* I got a question for ya#  actually:";
                message[6] = "* Do you develop some sorta#  spectrum of hot 'round here?";
                message[7] = "* See, like, not just hot but#  blazin' hot versus swelterin'#  hot-";
                message[8] = "* Ya know what, you look busy.#  We'll talk, later or somethin'.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
        case 3:
            with (msg)
            {
                message[0] = "* I'd call today blisterin' hot I#  think.";
                message[1] = "* Or is that too unoriginal,#  maybe something more#  interestin' like...";
                message[2] = "* Picklen' hot!";
                message[3] = "* That makes no sense actually,#  so maybe not, then.";
                message[4] = "* I'll have to think about this#  some more.";
            }
            
            if (global.snowdin_flag[9] >= 2 && npc_flag == 1)
                npc_flag = 2;
            
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* Wait, do you know my nephew?";
                message[1] = "* Adorable, wears pink gloves..";
                message[2] = "* You look just like this nice#  little buddy boo who he talked#  about comin' 'round.";
                message[3] = "* So, tell me, how is my little#  wubby dubby doin'?";
                message[4] = "* He never writes me anymore!";
                message[5] = "* Says it's too embarrassing or#  whatnot!";
                message[6] = "* I'm not that embarrassing of an#  aunt, ya know!";
                message[7] = "* I'm not as embarrassing as my#  sister, I'll tell ya that!";
                message[8] = "* She just goes on and on, \"My#  little snooky bear! Have you#  seen him! So precious!\"";
                message[9] = "* Makes me sick! Failed aunt-ing#  101 if ya ask me!";
                message[10] = "* I just like to talk about my#  little snoodlekins sometimes,#  is that so bad?";
                message[11] = "* I'm sorry, what were we talkin'#  about, sweety?";
            }
            
            npc_flag = 1;
            break;
    }
}
