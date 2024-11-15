event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = 391;
        message[0] = "* (An old TV and game console#  gathering dust.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[1] = 102;
            message[1] = "* The game case has a#  hand-made cover slip.   #  ";
            message[2] = "* \"Surface Tycoon\" it#  says.    ";
            message[3] = "* Chujin programmed a#  video game for Kanako?  #   ";
            message[4] = "* Wow... Must've been#  awesome to have him as a#  dad.";
            prt[1] = 328;
            prt[2] = 324;
            prt[3] = 333;
            prt[4] = 320;
        }
    }
    
    npc_flag = 1;
}
