event_inherited();

if (!interact)
    exit;

scr_text();

switch (global.dunes_flag_ext[0])
{
    case 0:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Hiya!";
            message[1] = "* Swell job sitting on#  that stool!";
            message[2] = "* I have a feelin' you'll#  be the talk of the town!";
            message[3] = "* We're gonna have so much#  fun training together!";
            message[4] = "* Hehe...";
            message[5] = "* Anyway, see ya later!";
            prt[0] = spr_portrait_mooch_normal;
            prt[1] = spr_portrait_mooch_happy;
            prt[2] = spr_portrait_mooch_smile;
            prt[3] = spr_portrait_mooch_smile;
            prt[4] = spr_portrait_mooch_smirk;
            prt[5] = spr_portrait_mooch_smile;
        }
        
        if (global.player_gold > 0)
            global.player_gold -= 1;
        
        global.dunes_flag_ext[0] = 1;
        break;
    
    case 1:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* Why are ya lookin' at me#  that way?";
            message[1] = "* I was just being#  friendly! Honest!";
            message[2] = "* It's nice to accept#  someone's kind words and#  leave it at that.";
            prt[0] = spr_portrait_mooch_normal;
            prt[1] = spr_portrait_mooch_happy;
            prt[2] = spr_portrait_mooch_normal;
        }
        
        global.dunes_flag_ext[0] = 2;
        break;
    
    case 2:
        with (msg)
        {
            talker[0] = other.object_index;
            message[0] = "* I sure am lookin'#  forward to training with#  you, hehe!";
            prt[0] = spr_portrait_mooch_smile;
        }
        
        break;
}
