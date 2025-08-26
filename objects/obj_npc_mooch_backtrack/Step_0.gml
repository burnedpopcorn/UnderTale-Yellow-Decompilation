event_inherited();

if (interact)
{
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            waiter = 1;
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                talker[0] = other.object_index;
                message[0] = "* I keep trying to sneak#  a drink from Dina but#  she won't let me!";
                message[1] = "* It's not fair, being#  the ONLY member who#  can't touch the stuff.";
                message[2] = "* Oh, wait, am I being a#  bad influence?";
                message[3] = "* Right, uhhhh...";
                message[4] = "* Vegetables! Education!#  The stock market!#  OoooOOOooo!!";
                prt[0] = spr_portrait_mooch_nervous;
                prt[1] = spr_portrait_mooch_nervous;
                prt[2] = spr_portrait_mooch_surprised;
                prt[3] = spr_portrait_mooch_normal;
                prt[4] = spr_portrait_mooch_happy;
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                talker[0] = other.object_index;
                message[0] = "* While I'm sad you're#  leaving us, I know#  you'll do great things.";
                message[1] = "* Give 'em heck, Clover!";
                prt[0] = spr_portrait_mooch_normal;
                prt[1] = spr_portrait_mooch_happy;
            }
            
            break;
    }
}

if (ds_map_find_value(global.npc_map, npc_id) != npc_flag)
    ds_map_replace(global.npc_map, npc_id, npc_flag);

if (waiter == 1)
{
    with (msg)
    {
        talker[0] = other.object_index;
        message[0] = "* Clover!! Hiya!";
        message[1] = "* Just dropping by?";
        message[2] = "* Yeah...";
        message[3] = "* Sucks you aren't#  actually joining the#  squad.";
        message[4] = "* With two small bodies,#  we could steal SO much#  sh-";
        message[5] = "* Uh...\t";
        message[6] = "* ...I should probably#  stop saying the quiet#  part out loud, heh!";
        prt[0] = spr_portrait_mooch_happy;
        prt[1] = spr_portrait_mooch_normal;
        prt[2] = spr_portrait_mooch_smile;
        prt[3] = spr_portrait_mooch_normal;
        prt[4] = spr_portrait_mooch_smirk;
        prt[5] = spr_portrait_mooch_surprised;
        prt[6] = spr_portrait_mooch_smile;
        
        if (message_current == 4)
        {
            skippable = false;
            message_timer = 15;
        }
        
        if (message_current > 4)
        {
            skippable = true;
            other.waiter = 0;
            message_timer = -1;
        }
    }
}
