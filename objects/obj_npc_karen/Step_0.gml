event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* H-hewwo.";
                message[1] = "* I'm hewe fow da fwee wowypops.";
                message[2] = "* Aftuh I checked myself in, da#  Dowc said he wan out of#  wowypops yestewday.";
                message[3] = "* Bummuh...";
                message[4] = "* At least I hawve dis fwuffy bed#  to cheew me up.";
            }
            
            npc_flag++;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* You know whawt's bettuh than#  wowypops? Hot chowcolate pops.";
                message[1] = "* A nice mownstuh named Mo gave#  me one one day.";
                message[2] = "* Mownstuhs wike him desewve a#  big huwg.";
            }
            
            npc_flag++;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* I wuwnder how wong it'll take#  da Dowc to reawize I'm not sick?";
            }
            
            break;
    }
}
