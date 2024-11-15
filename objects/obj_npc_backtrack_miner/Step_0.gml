event_inherited();

if (interact)
{
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* I was called over to break#  down this large boulder but...";
                message[1] = "* Man, it looks real tiring.";
                message[2] = "* It'll probably be a while#  before anyone can enter.";
                message[3] = "* ...Mostly because I don't#  wanna start.";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                talker[0] = other;
                message[0] = "* As I said, this could take a#  while.";
                message[1] = "* Just the journey to get here#  took all my energy.";
                message[2] = "* Patience, buddy.";
            }
            
            break;
    }
}
