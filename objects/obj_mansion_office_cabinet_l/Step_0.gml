event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        sndfnt_array[0] = 391;
        message[0] = "* (The cabinet contains#  thesis papers on many#  different subjects.)";
        
        if (other.npc_flag == 0 && global.party_member != -4)
        {
            sndfnt_array[1] = 102;
            message[1] = "* Whoa...";
            message[2] = "* These are all typed on#  cardstock...";
            message[3] = "* How wealthy was#  Chujin...?";
            prt[1] = 333;
            prt[2] = 338;
            prt[3] = 324;
        }
    }
    
    npc_flag = 1;
}
